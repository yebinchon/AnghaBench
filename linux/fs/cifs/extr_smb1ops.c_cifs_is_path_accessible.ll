; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_is_path_accessible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_is_path_accessible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*)* @cifs_is_path_accessible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_is_path_accessible(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 4, i32 %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %25 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %28 = call i32 @cifs_remap(%struct.cifs_sb_info* %27)
  %29 = call i32 @CIFSSMBQPathInfo(i32 %20, %struct.cifs_tcon* %21, i8* %22, i32* %23, i32 0, i32 %26, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34, %19
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %45 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %48 = call i32 @cifs_remap(%struct.cifs_sb_info* %47)
  %49 = call i32 @SMBQueryInformation(i32 %40, %struct.cifs_tcon* %41, i8* %42, i32* %43, i32 %46, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %39, %34
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @CIFSSMBQPathInfo(i32, %struct.cifs_tcon*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @SMBQueryInformation(i32, %struct.cifs_tcon*, i8*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
