; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_dump_share_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_dump_share_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cifs_tcon = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"\0A\09Share Capabilities:\00", align 1
@SMB2_SHARE_CAP_DFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" DFS,\00", align 1
@SMB2_SHARE_CAP_CONTINUOUS_AVAILABILITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c" CONTINUOUS AVAILABILITY,\00", align 1
@SMB2_SHARE_CAP_SCALEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" SCALEOUT,\00", align 1
@SMB2_SHARE_CAP_CLUSTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" CLUSTER,\00", align 1
@SMB2_SHARE_CAP_ASYMMETRIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" ASYMMETRIC,\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" None\00", align 1
@SSINFO_FLAGS_ALIGNED_DEVICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" Aligned,\00", align 1
@SSINFO_FLAGS_PARTITION_ALIGNED_ON_DEVICE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c" Partition Aligned,\00", align 1
@SSINFO_FLAGS_NO_SEEK_PENALTY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" SSD,\00", align 1
@SSINFO_FLAGS_TRIM_ENABLED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c" TRIM-support,\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"\09Share Flags: 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\0A\09tid: 0x%x\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\09Optimal sector size: 0x%x\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\09Maximal Access: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.cifs_tcon*)* @smb2_dump_share_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_dump_share_caps(%struct.seq_file* %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_puts(%struct.seq_file* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %8 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SMB2_SHARE_CAP_DFS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %18 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SMB2_SHARE_CAP_CONTINUOUS_AVAILABILITY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_puts(%struct.seq_file* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SMB2_SHARE_CAP_SCALEOUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 @seq_puts(%struct.seq_file* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %38 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SMB2_SHARE_CAP_CLUSTER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %48 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SMB2_SHARE_CAP_ASYMMETRIC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = call i32 @seq_puts(%struct.seq_file* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %58 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %66 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SSINFO_FLAGS_ALIGNED_DEVICE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %76 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SSINFO_FLAGS_PARTITION_ALIGNED_ON_DEVICE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = call i32 @seq_puts(%struct.seq_file* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %86 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSINFO_FLAGS_NO_SEEK_PENALTY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %96 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SSINFO_FLAGS_TRIM_ENABLED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %106 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %107 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %112 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 %113)
  %115 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %116 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %122 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %119, %104
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %128 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %129)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
