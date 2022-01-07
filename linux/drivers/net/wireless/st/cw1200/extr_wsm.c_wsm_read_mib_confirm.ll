; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_read_mib_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_read_mib_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_mib = type { i64, i64, i32 }
%struct.wsm_buf = type { i32 }

@WSM_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_mib*, %struct.wsm_buf*)* @wsm_read_mib_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_read_mib_confirm(%struct.cw1200_common* %0, %struct.wsm_mib* %1, %struct.wsm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.wsm_mib*, align 8
  %7 = alloca %struct.wsm_buf*, align 8
  %8 = alloca i64, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.wsm_mib* %1, %struct.wsm_mib** %6, align 8
  store %struct.wsm_buf* %2, %struct.wsm_buf** %7, align 8
  %9 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %10 = call i64 @WSM_GET32(%struct.wsm_buf* %9)
  %11 = load i64, i64* @WSM_STATUS_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %21 = call i64 @WSM_GET16(%struct.wsm_buf* %20)
  %22 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %23 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %19
  %33 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %34 = call i64 @WSM_GET16(%struct.wsm_buf* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %37 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %42 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %40, %32
  %45 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %46 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %47 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @WSM_GET(%struct.wsm_buf* %45, i32 %48, i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.wsm_mib*, %struct.wsm_mib** %6, align 8
  %53 = getelementptr inbounds %struct.wsm_mib, %struct.wsm_mib* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %58

54:                                               ; No predecessors!
  %55 = call i64 @WARN_ON(i32 1)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %44, %29, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i64 @WSM_GET16(%struct.wsm_buf*) #1

declare dso_local i32 @WSM_GET(%struct.wsm_buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
