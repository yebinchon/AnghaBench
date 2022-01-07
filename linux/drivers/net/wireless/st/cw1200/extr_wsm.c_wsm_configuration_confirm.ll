; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_configuration_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_configuration_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_configuration = type { %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.wsm_buf = type { i32 }

@WSM_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_configuration*, %struct.wsm_buf*)* @wsm_configuration_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_configuration_confirm(%struct.cw1200_common* %0, %struct.wsm_configuration* %1, %struct.wsm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.wsm_configuration*, align 8
  %7 = alloca %struct.wsm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.wsm_configuration* %1, %struct.wsm_configuration** %6, align 8
  store %struct.wsm_buf* %2, %struct.wsm_buf** %7, align 8
  %10 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %11 = call i8* @WSM_GET32(%struct.wsm_buf* %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @WSM_STATUS_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %24 = load %struct.wsm_configuration*, %struct.wsm_configuration** %6, align 8
  %25 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @WSM_GET(%struct.wsm_buf* %23, i32 %26, i32 %27)
  %29 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %30 = call i32 @WSM_GET8(%struct.wsm_buf* %29)
  %31 = load %struct.wsm_configuration*, %struct.wsm_configuration** %6, align 8
  %32 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %34 = call i32 @WSM_SKIP(%struct.wsm_buf* %33, i32 1)
  %35 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %36 = call i8* @WSM_GET32(%struct.wsm_buf* %35)
  %37 = load %struct.wsm_configuration*, %struct.wsm_configuration** %6, align 8
  %38 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %70, %22
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %44 = call i8* @WSM_GET32(%struct.wsm_buf* %43)
  %45 = load %struct.wsm_configuration*, %struct.wsm_configuration** %6, align 8
  %46 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %44, i8** %51, align 8
  %52 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %53 = call i8* @WSM_GET32(%struct.wsm_buf* %52)
  %54 = load %struct.wsm_configuration*, %struct.wsm_configuration** %6, align 8
  %55 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* %53, i8** %60, align 8
  %61 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %62 = call i8* @WSM_GET32(%struct.wsm_buf* %61)
  %63 = load %struct.wsm_configuration*, %struct.wsm_configuration** %6, align 8
  %64 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %62, i8** %69, align 8
  br label %70

70:                                               ; preds = %42
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %39

73:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %78

74:                                               ; No predecessors!
  %75 = call i64 @WARN_ON(i32 1)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %73, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i8* @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @WSM_GET(%struct.wsm_buf*, i32, i32) #1

declare dso_local i32 @WSM_GET8(%struct.wsm_buf*) #1

declare dso_local i32 @WSM_SKIP(%struct.wsm_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
