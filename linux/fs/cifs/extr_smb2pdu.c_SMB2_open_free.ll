; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_open_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_open_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@smb2_padding = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SMB2_open_free(%struct.smb_rqst* %0) #0 {
  %2 = alloca %struct.smb_rqst*, align 8
  %3 = alloca i32, align 4
  store %struct.smb_rqst* %0, %struct.smb_rqst** %2, align 8
  %4 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %5 = icmp ne %struct.smb_rqst* %4, null
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %8 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %6
  %12 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %13 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @cifs_small_buf_release(i64 %17)
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %47, %11
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %22 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %27 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @smb2_padding, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load %struct.smb_rqst*, %struct.smb_rqst** %2, align 8
  %38 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @kfree(i64 %44)
  br label %46

46:                                               ; preds = %36, %25
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %19

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50, %6, %1
  ret void
}

declare dso_local i32 @cifs_small_buf_release(i64) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
