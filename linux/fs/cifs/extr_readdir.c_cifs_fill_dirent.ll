; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_fill_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_fill_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_dirent = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown findfirst level %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_dirent*, i8*, i32, i32)* @cifs_fill_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_fill_dirent(%struct.cifs_dirent* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cifs_dirent* %0, %struct.cifs_dirent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %11 = call i32 @memset(%struct.cifs_dirent* %10, i32 0, i32 4)
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %38 [
    i32 128, label %13
    i32 132, label %18
    i32 131, label %22
    i32 130, label %26
    i32 133, label %30
    i32 129, label %34
  ]

13:                                               ; preds = %4
  %14 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @cifs_fill_dirent_unix(%struct.cifs_dirent* %14, i8* %15, i32 %16)
  br label %44

18:                                               ; preds = %4
  %19 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @cifs_fill_dirent_dir(%struct.cifs_dirent* %19, i8* %20)
  br label %44

22:                                               ; preds = %4
  %23 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @cifs_fill_dirent_full(%struct.cifs_dirent* %23, i8* %24)
  br label %44

26:                                               ; preds = %4
  %27 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @cifs_fill_dirent_search(%struct.cifs_dirent* %27, i8* %28)
  br label %44

30:                                               ; preds = %4
  %31 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @cifs_fill_dirent_both(%struct.cifs_dirent* %31, i8* %32)
  br label %44

34:                                               ; preds = %4
  %35 = load %struct.cifs_dirent*, %struct.cifs_dirent** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @cifs_fill_dirent_std(%struct.cifs_dirent* %35, i8* %36)
  br label %44

38:                                               ; preds = %4
  %39 = load i32, i32* @FYI, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @cifs_dbg(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %34, %30, %26, %22, %18, %13
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.cifs_dirent*, i32, i32) #1

declare dso_local i32 @cifs_fill_dirent_unix(%struct.cifs_dirent*, i8*, i32) #1

declare dso_local i32 @cifs_fill_dirent_dir(%struct.cifs_dirent*, i8*) #1

declare dso_local i32 @cifs_fill_dirent_full(%struct.cifs_dirent*, i8*) #1

declare dso_local i32 @cifs_fill_dirent_search(%struct.cifs_dirent*, i8*) #1

declare dso_local i32 @cifs_fill_dirent_both(%struct.cifs_dirent*, i8*) #1

declare dso_local i32 @cifs_fill_dirent_std(%struct.cifs_dirent*, i8*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
