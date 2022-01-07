; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_invoke_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_invoke_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i64, void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i32, i32, i32*, i8* }
%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }

@current = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_exch*, %struct.fc_seq*, %struct.fc_frame*)* @fc_invoke_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_invoke_resp(%struct.fc_exch* %0, %struct.fc_seq* %1, %struct.fc_frame* %2) #0 {
  %4 = alloca %struct.fc_exch*, align 8
  %5 = alloca %struct.fc_seq*, align 8
  %6 = alloca %struct.fc_frame*, align 8
  %7 = alloca void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %4, align 8
  store %struct.fc_seq* %1, %struct.fc_seq** %5, align 8
  store %struct.fc_frame* %2, %struct.fc_frame** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %11 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %10, i32 0, i32 3
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %14 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %18 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @current, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %24 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** @current, align 8
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32* [ %28, %27 ], [ null, %29 ]
  %32 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %33 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %36 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %35, i32 0, i32 1
  %37 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %36, align 8
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %37, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %7, align 8
  %38 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %39 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %42 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %41, i32 0, i32 3
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %7, align 8
  %45 = icmp ne void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %7, align 8
  %48 = load %struct.fc_seq*, %struct.fc_seq** %5, align 8
  %49 = load %struct.fc_frame*, %struct.fc_frame** %6, align 8
  %50 = load i8*, i8** %8, align 8
  call void %47(%struct.fc_seq* %48, %struct.fc_frame* %49, i8* %50)
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %34
  %52 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %53 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %52, i32 0, i32 3
  %54 = call i32 @spin_lock_bh(i32* %53)
  %55 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %56 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %62 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %51
  %64 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %65 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %64, i32 0, i32 3
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %68 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.fc_exch*, %struct.fc_exch** %4, align 8
  %73 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %72, i32 0, i32 2
  %74 = call i32 @wake_up(i32* %73)
  br label %75

75:                                               ; preds = %71, %63
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
