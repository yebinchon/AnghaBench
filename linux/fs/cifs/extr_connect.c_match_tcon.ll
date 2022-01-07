; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_tcon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i64, i64, i64, i64, i64, i32 }
%struct.smb_vol = type { i64, i64, i64, i64, i32 }

@CifsExiting = common dso_local global i64 0, align 8
@MAX_TREE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_tcon*, %struct.smb_vol*)* @match_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_tcon(%struct.cifs_tcon* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %6 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %7 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CifsExiting, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %17 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_TREE_SIZE, align 4
  %20 = call i64 @strncmp(i32 %15, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %60

23:                                               ; preds = %12
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %25 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %28 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %60

32:                                               ; preds = %23
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %37 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %60

41:                                               ; preds = %32
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %43 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %46 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %52 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %55 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %49, %40, %31, %22, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
