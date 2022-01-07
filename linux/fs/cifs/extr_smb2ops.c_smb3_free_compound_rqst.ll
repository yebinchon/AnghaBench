; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_free_compound_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_free_compound_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb3_free_compound_rqst(i32 %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.smb_rqst* %1, %struct.smb_rqst** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  %12 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i64 %14
  %16 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %11
  %20 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %20, i64 %22
  %24 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %42, %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %31, i64 %33
  %35 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @put_page(i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %46, i64 %48
  %50 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  br label %53

53:                                               ; preds = %45, %11
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %7

57:                                               ; preds = %7
  ret void
}

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
