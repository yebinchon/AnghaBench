; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_cause_connection_reinstatement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_cause_connection_reinstatement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }

@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_cause_connection_reinstatement(%struct.iscsi_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 10
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 2
  %15 = call i32 @spin_unlock_bh(i32* %14)
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 9
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock_bh(i32* %23)
  br label %89

25:                                               ; preds = %16
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 4
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_bh(i32* %32)
  br label %89

34:                                               ; preds = %25
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @SIGINT, align 4
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @send_sig(i32 %45, i64 %48, i32 1)
  br label %50

50:                                               ; preds = %44, %39, %34
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @SIGINT, align 4
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @send_sig(i32 %61, i64 %64, i32 1)
  br label %66

66:                                               ; preds = %60, %55, %50
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 4
  %69 = call i32 @atomic_set(i32* %68, i32 1)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock_bh(i32* %74)
  br label %89

76:                                               ; preds = %66
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 3
  %79 = call i32 @atomic_set(i32* %78, i32 1)
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %81 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %84 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %83, i32 0, i32 1
  %85 = call i32 @wait_for_completion(i32* %84)
  %86 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %87 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %86, i32 0, i32 0
  %88 = call i32 @complete(i32* %87)
  br label %89

89:                                               ; preds = %76, %72, %30, %21, %12
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @send_sig(i32, i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
