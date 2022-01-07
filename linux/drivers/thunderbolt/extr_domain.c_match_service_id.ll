; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_match_service_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_match_service_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_service_id = type { i32, i64, i64, i64, i32 }
%struct.tb_service = type { i64, i64, i64, i32 }

@TBSVC_MATCH_PROTOCOL_KEY = common dso_local global i32 0, align 4
@TBSVC_MATCH_PROTOCOL_ID = common dso_local global i32 0, align 4
@TBSVC_MATCH_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_service_id*, %struct.tb_service*)* @match_service_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_service_id(%struct.tb_service_id* %0, %struct.tb_service* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_service_id*, align 8
  %5 = alloca %struct.tb_service*, align 8
  store %struct.tb_service_id* %0, %struct.tb_service_id** %4, align 8
  store %struct.tb_service* %1, %struct.tb_service** %5, align 8
  %6 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %7 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TBSVC_MATCH_PROTOCOL_KEY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %14 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tb_service*, %struct.tb_service** %5, align 8
  %17 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @strcmp(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %75

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %25 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TBSVC_MATCH_PROTOCOL_ID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %32 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tb_service*, %struct.tb_service** %5, align 8
  %35 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %75

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %42 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TBSVC_MATCH_PROTOCOL_VERSION, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %49 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tb_service*, %struct.tb_service** %5, align 8
  %52 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %75

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %59 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TBSVC_MATCH_PROTOCOL_VERSION, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.tb_service_id*, %struct.tb_service_id** %4, align 8
  %66 = getelementptr inbounds %struct.tb_service_id, %struct.tb_service_id* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tb_service*, %struct.tb_service** %5, align 8
  %69 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %75

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %57
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %72, %55, %38, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
