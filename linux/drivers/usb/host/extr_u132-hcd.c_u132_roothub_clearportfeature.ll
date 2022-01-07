; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_clearportfeature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_clearportfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.u132 = type { i32, i32, %struct.TYPE_3__*, %struct.u132_port* }
%struct.TYPE_3__ = type { i32 }
%struct.u132_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RH_PS_CCS = common dso_local global i32 0, align 4
@RH_PS_PESC = common dso_local global i32 0, align 4
@RH_PS_POCI = common dso_local global i32 0, align 4
@OHCI_CTRL_HCFS = common dso_local global i32 0, align 4
@OHCI_USB_OPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TODO resume_root_hub\0A\00", align 1
@RH_PS_PSSC = common dso_local global i32 0, align 4
@RH_PS_LSDA = common dso_local global i32 0, align 4
@RH_PS_CSC = common dso_local global i32 0, align 4
@RH_PS_OCIC = common dso_local global i32 0, align 4
@RH_PS_PRSC = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, i32, i32)* @u132_roothub_clearportfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_clearportfeature(%struct.u132* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.u132*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132_port*, align 8
  store %struct.u132* %0, %struct.u132** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.u132*, %struct.u132** %5, align 8
  %16 = getelementptr inbounds %struct.u132, %struct.u132* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load %struct.u132*, %struct.u132** %5, align 8
  %26 = getelementptr inbounds %struct.u132, %struct.u132* %25, i32 0, i32 3
  %27 = load %struct.u132_port*, %struct.u132_port** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %27, i64 %29
  store %struct.u132_port* %30, %struct.u132_port** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.u132_port*, %struct.u132_port** %10, align 8
  %35 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %69 [
    i32 130, label %39
    i32 134, label %41
    i32 128, label %43
    i32 131, label %59
    i32 129, label %61
    i32 135, label %63
    i32 133, label %65
    i32 132, label %67
  ]

39:                                               ; preds = %22
  %40 = load i32, i32* @RH_PS_CCS, align 4
  store i32 %40, i32* %9, align 4
  br label %72

41:                                               ; preds = %22
  %42 = load i32, i32* @RH_PS_PESC, align 4
  store i32 %42, i32* %9, align 4
  br label %72

43:                                               ; preds = %22
  %44 = load i32, i32* @RH_PS_POCI, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.u132*, %struct.u132** %5, align 8
  %46 = getelementptr inbounds %struct.u132, %struct.u132* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @OHCI_USB_OPER, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.u132*, %struct.u132** %5, align 8
  %54 = getelementptr inbounds %struct.u132, %struct.u132* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %43
  br label %72

59:                                               ; preds = %22
  %60 = load i32, i32* @RH_PS_PSSC, align 4
  store i32 %60, i32* %9, align 4
  br label %72

61:                                               ; preds = %22
  %62 = load i32, i32* @RH_PS_LSDA, align 4
  store i32 %62, i32* %9, align 4
  br label %72

63:                                               ; preds = %22
  %64 = load i32, i32* @RH_PS_CSC, align 4
  store i32 %64, i32* %9, align 4
  br label %72

65:                                               ; preds = %22
  %66 = load i32, i32* @RH_PS_OCIC, align 4
  store i32 %66, i32* %9, align 4
  br label %72

67:                                               ; preds = %22
  %68 = load i32, i32* @RH_PS_PRSC, align 4
  store i32 %68, i32* %9, align 4
  br label %72

69:                                               ; preds = %22
  %70 = load i32, i32* @EPIPE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %67, %65, %63, %61, %59, %58, %41, %39
  %73 = load %struct.u132*, %struct.u132** %5, align 8
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @u132_write_pcimem(%struct.u132* %73, i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %69, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
