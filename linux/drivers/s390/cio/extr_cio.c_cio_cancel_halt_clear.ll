; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_cancel_halt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_cancel_halt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SCSW_ACTL_HALT_PEND = common dso_local global i32 0, align 4
@SCSW_ACTL_CLEAR_PEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_cancel_halt_clear(%struct.subchannel* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %8 = call i64 @cio_update_schib(%struct.subchannel* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %112

13:                                               ; preds = %2
  %14 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %15 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %112

21:                                               ; preds = %13
  %22 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @scsw_actl(i32* %24)
  %26 = load i32, i32* @SCSW_ACTL_HALT_PEND, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %21
  %30 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %31 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @scsw_actl(i32* %32)
  %34 = load i32, i32* @SCSW_ACTL_CLEAR_PEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %29
  %38 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @scsw_is_tm(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %45 = call i32 @cio_cancel(%struct.subchannel* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %112

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32*, i32** %5, align 8
  store i32 3, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %29, %21
  %56 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %57 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @scsw_actl(i32* %58)
  %60 = load i32, i32* @SCSW_ACTL_CLEAR_PEND, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %72 = call i32 @cio_halt(%struct.subchannel* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %82, %80 ], [ %84, %83 ]
  store i32 %86, i32* %3, align 4
  br label %112

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32*, i32** %5, align 8
  store i32 255, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %55
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %99 = call i32 @cio_clear(%struct.subchannel* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  br label %107

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  store i32 %108, i32* %3, align 4
  br label %112

109:                                              ; preds = %90
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %107, %85, %50, %20, %10
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @scsw_actl(i32*) #1

declare dso_local i32 @scsw_is_tm(i32*) #1

declare dso_local i32 @cio_cancel(%struct.subchannel*) #1

declare dso_local i32 @cio_halt(%struct.subchannel*) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
