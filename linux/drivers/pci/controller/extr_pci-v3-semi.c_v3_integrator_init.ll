; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_integrator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_integrator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_pci = type { i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"arm,integrator-ap-syscon\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"no syscon\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INTEGRATOR_SC_PCI_OFFSET = common dso_local global i32 0, align 4
@INTEGRATOR_SC_PCI_ENABLE = common dso_local global i32 0, align 4
@INTEGRATOR_SC_PCI_INTCLR = common dso_local global i32 0, align 4
@V3_LB_IO_BASE = common dso_local global i64 0, align 8
@V3_MAIL_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"initialized PCI V3 Integrator/AP integration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3_pci*)* @v3_integrator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_integrator_init(%struct.v3_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v3_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.v3_pci* %0, %struct.v3_pci** %3, align 8
  %5 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %7 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %9 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @IS_ERR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %15 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %22 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @INTEGRATOR_SC_PCI_OFFSET, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %4)
  %26 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %27 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @INTEGRATOR_SC_PCI_OFFSET, align 4
  %30 = load i32, i32* @INTEGRATOR_SC_PCI_ENABLE, align 4
  %31 = load i32, i32* @INTEGRATOR_SC_PCI_INTCLR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @regmap_write(i32 %28, i32 %29, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @INTEGRATOR_SC_PCI_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %20
  %39 = call i32 @msleep(i32 230)
  %40 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %41 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V3_LB_IO_BASE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 25088, i64 %44)
  br label %46

46:                                               ; preds = %76, %38
  %47 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %48 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V3_MAIL_DATA, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writeb(i32 170, i64 %51)
  %53 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %54 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V3_MAIL_DATA, align 8
  %57 = add nsw i64 %55, %56
  %58 = add nsw i64 %57, 4
  %59 = call i32 @writeb(i32 85, i64 %58)
  br label %60

60:                                               ; preds = %46
  %61 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %62 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @V3_MAIL_DATA, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readb(i64 %65)
  %67 = icmp ne i32 %66, 170
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %70 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V3_MAIL_DATA, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readb(i64 %73)
  %75 = icmp ne i32 %74, 85
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi i1 [ false, %60 ], [ %75, %68 ]
  br i1 %77, label %46, label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %20
  %80 = load %struct.v3_pci*, %struct.v3_pci** %3, align 8
  %81 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_info(i32 %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
