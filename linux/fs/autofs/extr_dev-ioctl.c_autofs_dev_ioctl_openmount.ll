; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_openmount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_openmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_dev_ioctl = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_openmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_openmount(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_dev_ioctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %6, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %7, align 8
  %12 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %13 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %22 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %24 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %27 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @new_decode_dev(i32 %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @autofs_dev_ioctl_open_mountpoint(i8* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  br label %45

41:                                               ; preds = %20
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %44 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @autofs_dev_ioctl_open_mountpoint(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
