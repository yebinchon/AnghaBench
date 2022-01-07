; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_smb_rqst_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_smb_rqst_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smb_rqst = type { i32, i32, i32, i32, i64, %struct.kvec* }
%struct.kvec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @smb_rqst_len(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.smb_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %10 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %17 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %22 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %21, i32 0, i32 5
  %23 = load %struct.kvec*, %struct.kvec** %22, align 8
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i64 0
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %30 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %29, i32 0, i32 5
  %31 = load %struct.kvec*, %struct.kvec** %30, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i64 1
  store %struct.kvec* %32, %struct.kvec** %6, align 8
  %33 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %44

37:                                               ; preds = %20, %15, %2
  %38 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %39 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %38, i32 0, i32 5
  %40 = load %struct.kvec*, %struct.kvec** %39, align 8
  store %struct.kvec* %40, %struct.kvec** %6, align 8
  %41 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %42 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %28
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.kvec*, %struct.kvec** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i64 %52
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %45

62:                                               ; preds = %45
  %63 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %64 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %69 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %74 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %8, align 8
  br label %99

78:                                               ; preds = %67
  %79 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %80 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %83 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = mul nsw i32 %81, %85
  %87 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %88 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %8, align 8
  %94 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %95 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %78, %72
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i64, i64* %8, align 8
  ret i64 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
