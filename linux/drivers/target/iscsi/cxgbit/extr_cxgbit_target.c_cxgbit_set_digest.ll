; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_set_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_set_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_param = type { i32 }

@HEADERDIGEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"param not found key %s\0A\00", align 1
@CRC32C = common dso_local global i32 0, align 4
@CXGBIT_SUBMODE_HCRC = common dso_local global i32 0, align 4
@DATADIGEST = common dso_local global i32 0, align 4
@CXGBIT_SUBMODE_DCRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_set_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_set_digest(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_param*, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %6 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %7 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %6, i32 0, i32 1
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %4, align 8
  %9 = load i32, i32* @HEADERDIGEST, align 4
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %9, i32 %12)
  store %struct.iscsi_param* %13, %struct.iscsi_param** %5, align 8
  %14 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %15 = icmp ne %struct.iscsi_param* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @HEADERDIGEST, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %2, align 4
  br label %66

19:                                               ; preds = %1
  %20 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CRC32C, align 4
  %24 = call i32 @strcmp(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @CXGBIT_SUBMODE_HCRC, align 4
  %28 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %29 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* @DATADIGEST, align 4
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %33, i32 %36)
  store %struct.iscsi_param* %37, %struct.iscsi_param** %5, align 8
  %38 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %39 = icmp ne %struct.iscsi_param* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %42 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @DATADIGEST, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %2, align 4
  br label %66

45:                                               ; preds = %32
  %46 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CRC32C, align 4
  %50 = call i32 @strcmp(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @CXGBIT_SUBMODE_DCRC, align 4
  %54 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %55 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %60 = call i64 @cxgbit_setup_conn_digest(%struct.cxgbit_sock* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %64 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 -1, i32* %2, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62, %40, %16
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @cxgbit_setup_conn_digest(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
