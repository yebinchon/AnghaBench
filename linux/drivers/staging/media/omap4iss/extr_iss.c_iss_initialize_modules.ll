; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_initialize_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_initialize_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"CSI PHY initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CSI2 initialization failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ISP IPIPEIF initialization failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ISP IPIPE initialization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"ISP RESIZER initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_device*)* @iss_initialize_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_initialize_modules(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %6 = call i32 @omap4iss_csiphy_init(%struct.iss_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %11 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %16 = call i32 @omap4iss_csi2_init(%struct.iss_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %21 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %64

24:                                               ; preds = %14
  %25 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %26 = call i32 @omap4iss_ipipeif_init(%struct.iss_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %31 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %61

34:                                               ; preds = %24
  %35 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %36 = call i32 @omap4iss_ipipe_init(%struct.iss_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %41 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %58

44:                                               ; preds = %34
  %45 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %46 = call i32 @omap4iss_resizer_init(%struct.iss_device* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %51 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %67

55:                                               ; preds = %49
  %56 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %57 = call i32 @omap4iss_ipipe_cleanup(%struct.iss_device* %56)
  br label %58

58:                                               ; preds = %55, %39
  %59 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %60 = call i32 @omap4iss_ipipeif_cleanup(%struct.iss_device* %59)
  br label %61

61:                                               ; preds = %58, %29
  %62 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %63 = call i32 @omap4iss_csi2_cleanup(%struct.iss_device* %62)
  br label %64

64:                                               ; preds = %61, %19
  br label %65

65:                                               ; preds = %64, %9
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @omap4iss_csiphy_init(%struct.iss_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omap4iss_csi2_init(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_ipipeif_init(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_ipipe_init(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_resizer_init(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_ipipe_cleanup(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_ipipeif_cleanup(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_csi2_cleanup(%struct.iss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
