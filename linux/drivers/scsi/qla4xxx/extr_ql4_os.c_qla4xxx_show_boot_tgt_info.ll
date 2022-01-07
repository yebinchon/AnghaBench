; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_show_boot_tgt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_show_boot_tgt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql4_boot_session_info = type { %struct.ql4_conn_info*, i32 }
%struct.ql4_conn_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@SYSFS_FLAG_FW_SEL_BOOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql4_boot_session_info*, i32, i8*)* @qla4xxx_show_boot_tgt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_show_boot_tgt_info(%struct.ql4_boot_session_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ql4_boot_session_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ql4_conn_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ql4_boot_session_info* %0, %struct.ql4_boot_session_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.ql4_boot_session_info*, %struct.ql4_boot_session_info** %4, align 8
  %11 = getelementptr inbounds %struct.ql4_boot_session_info, %struct.ql4_boot_session_info* %10, i32 0, i32 0
  %12 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %11, align 8
  %13 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %12, i64 0
  store %struct.ql4_conn_info* %13, %struct.ql4_conn_info** %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %101 [
    i32 132, label %16
    i32 133, label %22
    i32 130, label %44
    i32 136, label %50
    i32 135, label %61
    i32 129, label %72
    i32 128, label %83
    i32 134, label %94
    i32 131, label %98
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.ql4_boot_session_info*, %struct.ql4_boot_session_info** %4, align 8
  %19 = getelementptr inbounds %struct.ql4_boot_session_info, %struct.ql4_boot_session_info* %18, i32 0, i32 1
  %20 = bitcast i32* %19 to i8*
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %9, align 4
  br label %104

22:                                               ; preds = %3
  %23 = load %struct.ql4_boot_session_info*, %struct.ql4_boot_session_info** %4, align 8
  %24 = getelementptr inbounds %struct.ql4_boot_session_info, %struct.ql4_boot_session_info* %23, i32 0, i32 0
  %25 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %24, align 8
  %26 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %25, i64 0
  %27 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %34 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %22
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %40 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %104

44:                                               ; preds = %3
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %47 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %9, align 4
  br label %104

50:                                               ; preds = %3
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %53 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %57 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %59)
  store i32 %60, i32* %9, align 4
  br label %104

61:                                               ; preds = %3
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %64 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %68 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %66, i8* %70)
  store i32 %71, i32* %9, align 4
  br label %104

72:                                               ; preds = %3
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %75 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %79 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = bitcast i32* %80 to i8*
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %81)
  store i32 %82, i32* %9, align 4
  br label %104

83:                                               ; preds = %3
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %86 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.ql4_conn_info*, %struct.ql4_conn_info** %7, align 8
  %90 = getelementptr inbounds %struct.ql4_conn_info, %struct.ql4_conn_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = bitcast i32* %91 to i8*
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %88, i8* %92)
  store i32 %93, i32* %9, align 4
  br label %104

94:                                               ; preds = %3
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @SYSFS_FLAG_FW_SEL_BOOT, align 4
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %9, align 4
  br label %104

98:                                               ; preds = %3
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %100, i32* %9, align 4
  br label %104

101:                                              ; preds = %3
  %102 = load i32, i32* @ENOSYS, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %98, %94, %83, %72, %61, %50, %44, %43, %16
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
