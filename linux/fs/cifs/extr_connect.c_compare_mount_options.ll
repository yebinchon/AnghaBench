; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_compare_mount_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_compare_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cifs_mnt_data = type { i32, %struct.cifs_sb_info* }
%struct.cifs_sb_info = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@CIFS_MOUNT_MASK = common dso_local global i32 0, align 4
@CIFS_MS_MASK = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.cifs_mnt_data*)* @compare_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_mount_options(%struct.super_block* %0, %struct.cifs_mnt_data* %1) #0 {
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
  %13 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %12, i32 0, i32 1
  %14 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  store %struct.cifs_sb_info* %14, %struct.cifs_sb_info** %7, align 8
  %15 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CIFS_MOUNT_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CIFS_MOUNT_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CIFS_MS_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.cifs_mnt_data*, %struct.cifs_mnt_data** %5, align 8
  %31 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CIFS_MS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

37:                                               ; preds = %2
  %38 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %39 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %140

52:                                               ; preds = %47
  %53 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %54 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %59 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %62 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %140

66:                                               ; preds = %57, %52
  %67 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %68 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %73 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %76 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %140

80:                                               ; preds = %71, %66
  %81 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %82 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %85 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @uid_eq(i32 %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %91 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %94 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @gid_eq(i32 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89, %80
  store i32 0, i32* %3, align 4
  br label %140

99:                                               ; preds = %89
  %100 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %101 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %104 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %109 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %112 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107, %99
  store i32 0, i32* %3, align 4
  br label %140

116:                                              ; preds = %107
  %117 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %118 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %117, i32 0, i32 6
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %123 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %122, i32 0, i32 6
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @strcmp(i32 %121, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %140

130:                                              ; preds = %116
  %131 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %132 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %135 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %140

139:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %138, %129, %115, %98, %79, %65, %51, %36
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
