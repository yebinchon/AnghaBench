; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_mm.c_lld_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_mm.c_lld_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32, %struct.TYPE_10__*, i32)*, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.uioc_timeout = type { %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i64 }

@ENODATA = common dso_local global i32 0, align 4
@IOCTL_ISSUE = common dso_local global i32 0, align 4
@lld_timedout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@wait_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @lld_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lld_ioctl(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uioc_timeout, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = bitcast %struct.uioc_timeout* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* @ENODATA, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32 (i32, %struct.TYPE_10__*, i32)*, i32 (i32, %struct.TYPE_10__*, i32)** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = load i32, i32* @IOCTL_ISSUE, align 4
  %21 = call i32 %15(i32 %18, %struct.TYPE_10__* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 1
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %33, align 8
  %34 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 0
  %35 = load i32, i32* @lld_timedout, align 4
  %36 = call i32 @timer_setup_on_stack(%struct.TYPE_12__* %34, i32 %35, i32 0)
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 0
  %48 = call i32 @add_timer(%struct.TYPE_12__* %47)
  br label %49

49:                                               ; preds = %31, %26
  %50 = load i32, i32* @wait_q, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event(i32 %50, i32 %57)
  %59 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 0
  %65 = call i32 @del_timer_sync(%struct.TYPE_12__* %64)
  %66 = getelementptr inbounds %struct.uioc_timeout, %struct.uioc_timeout* %7, i32 0, i32 0
  %67 = call i32 @destroy_timer_on_stack(%struct.TYPE_12__* %66)
  br label %68

68:                                               ; preds = %63, %49
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @timer_setup_on_stack(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @add_timer(%struct.TYPE_12__*) #2

declare dso_local i32 @wait_event(i32, i32) #2

declare dso_local i32 @del_timer_sync(%struct.TYPE_12__*) #2

declare dso_local i32 @destroy_timer_on_stack(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
