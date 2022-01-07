; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_check_req.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"kAFS: %s: Request buffer overflow (%zu>%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"kAFS: %s: Request buffer underflow (%zu<%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_call*, i32*)* @yfs_check_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yfs_check_req(%struct.afs_call* %0, i32* %1) #0 {
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %9 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %7 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %16 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25, i64 %28)
  br label %48

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %42, i64 %45)
  br label %47

47:                                               ; preds = %36, %30
  br label %48

48:                                               ; preds = %47, %19
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i64, i64) #1

declare dso_local i32 @pr_warning(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
