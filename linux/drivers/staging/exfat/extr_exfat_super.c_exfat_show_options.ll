; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.exfat_sb_info = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.exfat_mount_options }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.exfat_mount_options = type { i64, i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",fmask=%04o\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c",dmask=%04o\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c",allow_utime=%04o\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c",codepage=%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c",namecase=%u\00", align 1
@EXFAT_ERRORS_CONT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@EXFAT_ERRORS_PANIC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @exfat_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.exfat_sb_info*, align 8
  %6 = alloca %struct.exfat_mount_options*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.exfat_sb_info* @EXFAT_SB(i32 %9)
  store %struct.exfat_sb_info* %10, %struct.exfat_sb_info** %5, align 8
  %11 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %11, i32 0, i32 2
  store %struct.exfat_mount_options* %12, %struct.exfat_mount_options** %6, align 8
  %13 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %14 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @__kuid_val(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %21 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @__kuid_val(i32 %22)
  %24 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %27 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @__kgid_val(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %34 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @__kgid_val(i32 %35)
  %37 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %41 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %46 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %50 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %56 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %53, %38
  %60 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %61 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = icmp ne %struct.TYPE_3__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %64, %59
  %73 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %74 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %80 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %88 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %89)
  %91 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %92 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @EXFAT_ERRORS_CONT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = call i32 @seq_puts(%struct.seq_file* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %112

99:                                               ; preds = %85
  %100 = load %struct.exfat_mount_options*, %struct.exfat_mount_options** %6, align 8
  %101 = getelementptr inbounds %struct.exfat_mount_options, %struct.exfat_mount_options* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EXFAT_ERRORS_PANIC, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = call i32 @seq_puts(%struct.seq_file* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %111

108:                                              ; preds = %99
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = call i32 @seq_puts(%struct.seq_file* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %96
  ret i32 0
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(i32) #1

declare dso_local i64 @__kuid_val(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @__kgid_val(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
