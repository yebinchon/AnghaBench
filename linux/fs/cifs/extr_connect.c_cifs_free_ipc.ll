; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_free_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_free_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.cifs_tcon*, %struct.TYPE_3__* }
%struct.cifs_tcon = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.cifs_tcon*)* }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to disconnect IPC tcon (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*)* @cifs_free_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_free_ipc(%struct.cifs_ses* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %8 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %7, i32 0, i32 0
  %9 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  store %struct.cifs_tcon* %9, %struct.cifs_tcon** %6, align 8
  %10 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %11 = icmp eq %struct.cifs_tcon* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %15 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.cifs_tcon*)*, i32 (i32, %struct.cifs_tcon*)** %19, align 8
  %21 = icmp ne i32 (i32, %struct.cifs_tcon*)* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = call i32 (...) @get_xid()
  store i32 %23, i32* %5, align 4
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.cifs_tcon*)*, i32 (i32, %struct.cifs_tcon*)** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %33 = call i32 %30(i32 %31, %struct.cifs_tcon* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @free_xid(i32 %34)
  br label %36

36:                                               ; preds = %22, %13
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @FYI, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @cifs_dbg(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %45 = call i32 @tconInfoFree(%struct.cifs_tcon* %44)
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %47 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %46, i32 0, i32 0
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %47, align 8
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @tconInfoFree(%struct.cifs_tcon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
