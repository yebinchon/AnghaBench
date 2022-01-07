; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_busy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rotate.c_afs_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_volume = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"restarting\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"being salvaged\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"kAFS: Volume %llu '%s' is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_volume*, i32)* @afs_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_busy(%struct.afs_volume* %0, i32 %1) #0 {
  %3 = alloca %struct.afs_volume*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.afs_volume* %0, %struct.afs_volume** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %10 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %9
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %11

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %11

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %11

11:                                               ; preds = %10, %9, %8, %7
  %12 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %13 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.afs_volume*, %struct.afs_volume** %3, align 8
  %16 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %14, i32 %17, i8* %18)
  ret void
}

declare dso_local i32 @pr_notice(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
