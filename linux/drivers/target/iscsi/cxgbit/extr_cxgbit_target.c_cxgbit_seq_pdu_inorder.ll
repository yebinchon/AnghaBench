; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_seq_pdu_inorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_seq_pdu_inorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_param = type { i32 }

@DATASEQUENCEINORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"param not found key %s\0A\00", align 1
@YES = common dso_local global i32 0, align 4
@DATAPDUINORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_seq_pdu_inorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_seq_pdu_inorder(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_param*, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %6 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %7 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %6, i32 0, i32 0
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %4, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load i32, i32* @DATASEQUENCEINORDER, align 4
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %16, i32 %19)
  store %struct.iscsi_param* %20, %struct.iscsi_param** %5, align 8
  %21 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %22 = icmp ne %struct.iscsi_param* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @DATASEQUENCEINORDER, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %2, align 4
  br label %76

26:                                               ; preds = %15
  %27 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @YES, align 4
  %31 = call i64 @strcmp(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %76

34:                                               ; preds = %26
  %35 = load i32, i32* @DATAPDUINORDER, align 4
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %35, i32 %38)
  store %struct.iscsi_param* %39, %struct.iscsi_param** %5, align 8
  %40 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %41 = icmp ne %struct.iscsi_param* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @DATAPDUINORDER, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %2, align 4
  br label %76

45:                                               ; preds = %34
  %46 = load %struct.iscsi_param*, %struct.iscsi_param** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @YES, align 4
  %50 = call i64 @strcmp(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %76

53:                                               ; preds = %45
  br label %75

54:                                               ; preds = %1
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %76

64:                                               ; preds = %54
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %76

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %53
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %63, %52, %42, %33, %23
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
