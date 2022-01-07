; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_validate_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_validate_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dev_ioctl = type { i64, i32 }

@.str = private unnamed_addr constant [64 x i8] c"invalid device control module version supplied for cmd(0x%08x)\0A\00", align 1
@AUTOFS_DEV_IOCTL_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"path string terminator missing for cmd(0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid path supplied for cmd(0x%08x)\0A\00", align 1
@AUTOFS_DEV_IOCTL_OPENMOUNT_CMD = common dso_local global i32 0, align 4
@AUTOFS_DEV_IOCTL_REQUESTER_CMD = common dso_local global i32 0, align 4
@AUTOFS_DEV_IOCTL_ISMOUNTPOINT_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.autofs_dev_ioctl*)* @validate_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_dev_ioctl(i32 %0, %struct.autofs_dev_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.autofs_dev_ioctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.autofs_dev_ioctl* %1, %struct.autofs_dev_ioctl** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %9 = call i32 @check_dev_ioctl_version(i32 %7, %struct.autofs_dev_ioctl* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %17 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AUTOFS_DEV_IOCTL_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %23 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %26 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUTOFS_DEV_IOCTL_SIZE, align 8
  %29 = sub nsw i64 %27, %28
  %30 = call i32 @invalid_str(i32 %24, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %66

36:                                               ; preds = %21
  %37 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %4, align 8
  %38 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @check_name(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %66

46:                                               ; preds = %36
  br label %65

47:                                               ; preds = %15
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @_IOC_NR(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AUTOFS_DEV_IOCTL_OPENMOUNT_CMD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @AUTOFS_DEV_IOCTL_REQUESTER_CMD, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @AUTOFS_DEV_IOCTL_ISMOUNTPOINT_CMD, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %53, %47
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %66

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %46
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %61, %43, %33, %12
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @check_dev_ioctl_version(i32, %struct.autofs_dev_ioctl*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @invalid_str(i32, i64) #1

declare dso_local i32 @check_name(i32) #1

declare dso_local i32 @_IOC_NR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
