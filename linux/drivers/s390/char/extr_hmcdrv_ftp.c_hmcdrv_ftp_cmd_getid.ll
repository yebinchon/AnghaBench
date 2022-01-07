; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_ftp.c_hmcdrv_ftp_cmd_getid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_hmcdrv_ftp.c_hmcdrv_ftp_cmd_getid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmcdrv_ftp_cmd_desc = type { i8*, i32 }
%struct.hmcdrv_ftp_cmd_desc.0 = type opaque

@hmcdrv_ftp_cmd_getid.ftpcmds = internal constant [7 x %struct.hmcdrv_ftp_cmd_desc] [%struct.hmcdrv_ftp_cmd_desc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 130 }, %struct.hmcdrv_ftp_cmd_desc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 131 }, %struct.hmcdrv_ftp_cmd_desc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 132 }, %struct.hmcdrv_ftp_cmd_desc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 129 }, %struct.hmcdrv_ftp_cmd_desc { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 128 }, %struct.hmcdrv_ftp_cmd_desc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 133 }, %struct.hmcdrv_ftp_cmd_desc zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nls\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@HMCDRV_FTP_NOOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"FTP command '%s' has CRC 0x%04x, at table pos. %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"FTP command '%s' found, with ID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hmcdrv_ftp_cmd_getid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmcdrv_ftp_cmd_getid(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hmcdrv_ftp_cmd_desc*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 65535, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @HMCDRV_FTP_NOOP, align 4
  store i32 %11, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @crc16(i32 %13, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ARRAY_SIZE(%struct.hmcdrv_ftp_cmd_desc.0* bitcast ([7 x %struct.hmcdrv_ftp_cmd_desc]* @hmcdrv_ftp_cmd_getid.ftpcmds to %struct.hmcdrv_ftp_cmd_desc.0*))
  %20 = srem i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hmcdrv_ftp_cmd_desc, %struct.hmcdrv_ftp_cmd_desc* getelementptr inbounds ([7 x %struct.hmcdrv_ftp_cmd_desc], [7 x %struct.hmcdrv_ftp_cmd_desc]* @hmcdrv_ftp_cmd_getid.ftpcmds, i64 0, i64 0), i64 %21
  store %struct.hmcdrv_ftp_cmd_desc* %22, %struct.hmcdrv_ftp_cmd_desc** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ARRAY_SIZE(%struct.hmcdrv_ftp_cmd_desc.0* bitcast ([7 x %struct.hmcdrv_ftp_cmd_desc]* @hmcdrv_ftp_cmd_getid.ftpcmds to %struct.hmcdrv_ftp_cmd_desc.0*))
  %27 = srem i32 %25, %26
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %23, i32 %24, i32 %27)
  %29 = load %struct.hmcdrv_ftp_cmd_desc*, %struct.hmcdrv_ftp_cmd_desc** %6, align 8
  %30 = getelementptr inbounds %struct.hmcdrv_ftp_cmd_desc, %struct.hmcdrv_ftp_cmd_desc* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %12
  %34 = load %struct.hmcdrv_ftp_cmd_desc*, %struct.hmcdrv_ftp_cmd_desc** %6, align 8
  %35 = getelementptr inbounds %struct.hmcdrv_ftp_cmd_desc, %struct.hmcdrv_ftp_cmd_desc* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @strncmp(i8* %36, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33, %12
  %43 = load i32, i32* @HMCDRV_FTP_NOOP, align 4
  store i32 %43, i32* %3, align 4
  br label %55

44:                                               ; preds = %33
  %45 = load %struct.hmcdrv_ftp_cmd_desc*, %struct.hmcdrv_ftp_cmd_desc** %6, align 8
  %46 = getelementptr inbounds %struct.hmcdrv_ftp_cmd_desc, %struct.hmcdrv_ftp_cmd_desc* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.hmcdrv_ftp_cmd_desc*, %struct.hmcdrv_ftp_cmd_desc** %6, align 8
  %49 = getelementptr inbounds %struct.hmcdrv_ftp_cmd_desc, %struct.hmcdrv_ftp_cmd_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %47, i32 %50)
  %52 = load %struct.hmcdrv_ftp_cmd_desc*, %struct.hmcdrv_ftp_cmd_desc** %6, align 8
  %53 = getelementptr inbounds %struct.hmcdrv_ftp_cmd_desc, %struct.hmcdrv_ftp_cmd_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %44, %42, %10
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @crc16(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hmcdrv_ftp_cmd_desc.0*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
