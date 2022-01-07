; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i32* }
%struct.mpc624_private = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@MPC624_SPEED_3_52_KHZ = common dso_local global i8* null, align 8
@MPC624_SPEED_1_76_KHZ = common dso_local global i8* null, align 8
@MPC624_SPEED_880_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_440_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_220_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_110_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_55_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_27_5_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_13_75_HZ = common dso_local global i8* null, align 8
@MPC624_SPEED_6_875_HZ = common dso_local global i8* null, align 8
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@range_mpc624_bipolar1 = common dso_local global i32 0, align 4
@range_mpc624_bipolar10 = common dso_local global i32 0, align 4
@mpc624_ai_insn_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @mpc624_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc624_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.mpc624_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @comedi_request_region(%struct.comedi_device* %9, i32 %14, i32 16)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = call %struct.mpc624_private* @comedi_alloc_devpriv(%struct.comedi_device* %21, i32 8)
  store %struct.mpc624_private* %22, %struct.mpc624_private** %6, align 8
  %23 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %24 = icmp ne %struct.mpc624_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %115

28:                                               ; preds = %20
  %29 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %74 [
    i32 0, label %34
    i32 1, label %38
    i32 2, label %42
    i32 3, label %46
    i32 4, label %50
    i32 5, label %54
    i32 6, label %58
    i32 7, label %62
    i32 8, label %66
    i32 9, label %70
  ]

34:                                               ; preds = %28
  %35 = load i8*, i8** @MPC624_SPEED_3_52_KHZ, align 8
  %36 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %37 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %78

38:                                               ; preds = %28
  %39 = load i8*, i8** @MPC624_SPEED_1_76_KHZ, align 8
  %40 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %41 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %78

42:                                               ; preds = %28
  %43 = load i8*, i8** @MPC624_SPEED_880_HZ, align 8
  %44 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %45 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %78

46:                                               ; preds = %28
  %47 = load i8*, i8** @MPC624_SPEED_440_HZ, align 8
  %48 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %49 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %78

50:                                               ; preds = %28
  %51 = load i8*, i8** @MPC624_SPEED_220_HZ, align 8
  %52 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %53 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %78

54:                                               ; preds = %28
  %55 = load i8*, i8** @MPC624_SPEED_110_HZ, align 8
  %56 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %57 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %78

58:                                               ; preds = %28
  %59 = load i8*, i8** @MPC624_SPEED_55_HZ, align 8
  %60 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %61 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %78

62:                                               ; preds = %28
  %63 = load i8*, i8** @MPC624_SPEED_27_5_HZ, align 8
  %64 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %65 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %78

66:                                               ; preds = %28
  %67 = load i8*, i8** @MPC624_SPEED_13_75_HZ, align 8
  %68 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %69 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %78

70:                                               ; preds = %28
  %71 = load i8*, i8** @MPC624_SPEED_6_875_HZ, align 8
  %72 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %73 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %28
  %75 = load i8*, i8** @MPC624_SPEED_3_52_KHZ, align 8
  %76 = load %struct.mpc624_private*, %struct.mpc624_private** %6, align 8
  %77 = getelementptr inbounds %struct.mpc624_private, %struct.mpc624_private* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %79, i32 1)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %115

85:                                               ; preds = %78
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %87, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i64 0
  store %struct.comedi_subdevice* %89, %struct.comedi_subdevice** %7, align 8
  %90 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @SDF_READABLE, align 4
  %94 = load i32, i32* @SDF_DIFF, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 1
  store i32 4, i32* %99, align 4
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 2
  store i32 1073741823, i32* %101, align 8
  %102 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %103 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32* @range_mpc624_bipolar1, i32* @range_mpc624_bipolar10
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 4
  store i32* %109, i32** %111, align 8
  %112 = load i32, i32* @mpc624_ai_insn_read, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %85, %83, %25, %18
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local %struct.mpc624_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
