; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_validate_subchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_validate_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.subchannel_id = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Blacklisted device detected at devno %04X, subchannel set %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Subchannel 0.%x.%04x reports subchannel type %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.schib*)* @css_validate_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_validate_subchannel(i64 %0, %struct.schib* %1) #0 {
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca %struct.schib*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.subchannel_id* %3 to i64*
  store i64 %0, i64* %6, align 4
  store %struct.schib* %1, %struct.schib** %4, align 8
  %7 = load %struct.schib*, %struct.schib** %4, align 8
  %8 = getelementptr inbounds %struct.schib, %struct.schib* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %40 [
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.schib*, %struct.schib** %4, align 8
  %13 = call i32 @css_sch_is_valid(%struct.schib* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.schib*, %struct.schib** %4, align 8
  %22 = getelementptr inbounds %struct.schib, %struct.schib* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @is_blacklisted(i32 %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.schib*, %struct.schib** %4, align 8
  %29 = getelementptr inbounds %struct.schib, %struct.schib* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, i32, ...) @CIO_MSG_EVENT(i32 6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %15
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %55

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.schib*, %struct.schib** %4, align 8
  %51 = getelementptr inbounds %struct.schib, %struct.schib* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, i32, ...) @CIO_MSG_EVENT(i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @css_sch_is_valid(%struct.schib*) #1

declare dso_local i32 @is_blacklisted(i32, i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
