; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_alloc_anon_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_alloc_anon_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_cell = type { i8*, %struct.key* }
%struct.key = type { i32 }

@AFS_MAXCELLNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"afs@\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"anon key %p{%x}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_cell*)* @afs_alloc_anon_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_alloc_anon_key(%struct.afs_cell* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_cell*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_cell* %0, %struct.afs_cell** %3, align 8
  %10 = load i32, i32* @AFS_MAXCELLNAME, align 4
  %11 = add nsw i32 4, %10
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = call i32 @memcpy(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %17, i8** %8, align 8
  %18 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %19 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %28, %1
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @tolower(i8 signext %23)
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  store i8 %25, i8* %26, align 1
  br label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %29, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %21, label %33

33:                                               ; preds = %28
  %34 = call %struct.key* @rxrpc_get_null_key(i8* %15)
  store %struct.key* %34, %struct.key** %4, align 8
  %35 = load %struct.key*, %struct.key** %4, align 8
  %36 = call i64 @IS_ERR(%struct.key* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.key*, %struct.key** %4, align 8
  %40 = call i32 @PTR_ERR(%struct.key* %39)
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.key*, %struct.key** %4, align 8
  %43 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %44 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %43, i32 0, i32 1
  store %struct.key* %42, %struct.key** %44, align 8
  %45 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %46 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %45, i32 0, i32 1
  %47 = load %struct.key*, %struct.key** %46, align 8
  %48 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %49 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %48, i32 0, i32 1
  %50 = load %struct.key*, %struct.key** %49, align 8
  %51 = call i32 @key_serial(%struct.key* %50)
  %52 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.key* %47, i32 %51)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @tolower(i8 signext) #2

declare dso_local %struct.key* @rxrpc_get_null_key(i8*) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @_debug(i8*, %struct.key*, i32) #2

declare dso_local i32 @key_serial(%struct.key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
