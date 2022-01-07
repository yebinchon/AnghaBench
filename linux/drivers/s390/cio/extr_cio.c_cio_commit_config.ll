; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_commit_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_commit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32 }
%struct.schib = type { i32 }
%struct.irb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_commit_config(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.schib, align 4
  %8 = alloca %struct.irb, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @stsch(i32 %11, %struct.schib* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = call i32 @css_sch_is_valid(%struct.schib* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %79, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %82

24:                                               ; preds = %21
  %25 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %26 = call i32 @cio_apply_config(%struct.subchannel* %25, %struct.schib* %7)
  %27 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @msch(i32 %29, %struct.schib* %7)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %84

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %78 [
    i32 0, label %37
    i32 1, label %60
    i32 2, label %71
    i32 3, label %75
  ]

37:                                               ; preds = %35
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @stsch(i32 %40, %struct.schib* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = call i32 @css_sch_is_valid(%struct.schib* %7)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %84

49:                                               ; preds = %43
  %50 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %51 = call i32 @cio_check_config(%struct.subchannel* %50, %struct.schib* %7)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %55 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %54, i32 0, i32 1
  %56 = call i32 @memcpy(i32* %55, %struct.schib* %7, i32 4)
  store i32 0, i32* %2, align 4
  br label %84

57:                                               ; preds = %49
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %78

60:                                               ; preds = %35
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %64 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tsch(i32 %65, %struct.irb* %8)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %84

70:                                               ; preds = %60
  br label %78

71:                                               ; preds = %35
  %72 = call i32 @udelay(i32 100)
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %78

75:                                               ; preds = %35
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %84

78:                                               ; preds = %35, %71, %70, %57
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %21

82:                                               ; preds = %21
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %75, %68, %53, %46, %33, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @stsch(i32, %struct.schib*) #1

declare dso_local i32 @css_sch_is_valid(%struct.schib*) #1

declare dso_local i32 @cio_apply_config(%struct.subchannel*, %struct.schib*) #1

declare dso_local i32 @msch(i32, %struct.schib*) #1

declare dso_local i32 @cio_check_config(%struct.subchannel*, %struct.schib*) #1

declare dso_local i32 @memcpy(i32*, %struct.schib*, i32) #1

declare dso_local i32 @tsch(i32, %struct.irb*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
