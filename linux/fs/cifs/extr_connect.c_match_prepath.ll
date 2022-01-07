; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_prepath.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_prepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cifs_mnt_data = type { %struct.cifs_sb_info* }
%struct.cifs_sb_info = type { i32, i32 }

@CIFS_MOUNT_USE_PREFIX_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.cifs_mnt_data*)* @match_prepath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_prepath(%struct.super_block* %0, %struct.cifs_mnt_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.cifs_mnt_data*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.cifs_mnt_data* %1, %struct.cifs_mnt_data** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %10)
  store %struct.cifs_sb_info* %11, %struct.cifs_sb_info** %6, align 8
  %12 = load %struct.cifs_mnt_data*, %struct.cifs_mnt_data** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %12, i32 0, i32 0
  %14 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  store %struct.cifs_sb_info* %14, %struct.cifs_sb_info** %7, align 8
  %15 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CIFS_MOUNT_USE_PREFIX_PATH, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CIFS_MOUNT_USE_PREFIX_PATH, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %32 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %49

40:                                               ; preds = %30, %27, %2
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %49

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %39
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
