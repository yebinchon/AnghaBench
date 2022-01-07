; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_get_volume_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_get_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smb_vol* @cifs_get_volume_info(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.smb_vol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_vol*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.smb_vol* @kmalloc(i32 4, i32 %10)
  store %struct.smb_vol* %11, %struct.smb_vol** %9, align 8
  %12 = load %struct.smb_vol*, %struct.smb_vol** %9, align 8
  %13 = icmp ne %struct.smb_vol* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.smb_vol* @ERR_PTR(i32 %16)
  store %struct.smb_vol* %17, %struct.smb_vol** %4, align 8
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.smb_vol*, %struct.smb_vol** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cifs_setup_volume_info(%struct.smb_vol* %19, i8* %20, i8* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.smb_vol*, %struct.smb_vol** %9, align 8
  %28 = call i32 @cifs_cleanup_volume_info(%struct.smb_vol* %27)
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.smb_vol* @ERR_PTR(i32 %29)
  store %struct.smb_vol* %30, %struct.smb_vol** %9, align 8
  br label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.smb_vol*, %struct.smb_vol** %9, align 8
  store %struct.smb_vol* %32, %struct.smb_vol** %4, align 8
  br label %33

33:                                               ; preds = %31, %14
  %34 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  ret %struct.smb_vol* %34
}

declare dso_local %struct.smb_vol* @kmalloc(i32, i32) #1

declare dso_local %struct.smb_vol* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_setup_volume_info(%struct.smb_vol*, i8*, i8*, i32) #1

declare dso_local i32 @cifs_cleanup_volume_info(%struct.smb_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
