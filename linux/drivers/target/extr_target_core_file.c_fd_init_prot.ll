; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_init_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_init_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.fd_dev = type { i32, i8*, %struct.file*, %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@FD_MAX_DEV_PROT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to locate fd_dev->fd_file\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"FILEIO Protection emulation only supported on !S_ISBLK\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@FDBD_HAS_BUFFERED_IO_WCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s.protection\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"filp_open(%s) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @fd_init_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_init_prot(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.fd_dev*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %13 = load %struct.se_device*, %struct.se_device** %3, align 8
  %14 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %13)
  store %struct.fd_dev* %14, %struct.fd_dev** %4, align 8
  %15 = load %struct.fd_dev*, %struct.fd_dev** %4, align 8
  %16 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %15, i32 0, i32 3
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %6, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @O_LARGEFILE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_DSYNC, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @FD_MAX_DEV_PROT_NAME, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = icmp ne %struct.file* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %82

35:                                               ; preds = %1
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %7, align 8
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @S_ISBLK(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOSYS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %82

50:                                               ; preds = %35
  %51 = load %struct.fd_dev*, %struct.fd_dev** %4, align 8
  %52 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FDBD_HAS_BUFFERED_IO_WCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @O_DSYNC, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i32, i32* @FD_MAX_DEV_PROT_NAME, align 4
  %64 = load %struct.fd_dev*, %struct.fd_dev** %4, align 8
  %65 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @snprintf(i8* %28, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.file* @filp_open(i8* %28, i32 %68, i32 384)
  store %struct.file* %69, %struct.file** %5, align 8
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = call i64 @IS_ERR(%struct.file* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.file* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %82

78:                                               ; preds = %62
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = load %struct.fd_dev*, %struct.fd_dev** %4, align 8
  %81 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %80, i32 0, i32 2
  store %struct.file* %79, %struct.file** %81, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %78, %73, %46, %31
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
