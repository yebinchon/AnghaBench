; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_count_dos_name_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_count_dos_name_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i64, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_CRITICAL_PRI = common dso_local global i64 0, align 8
@TYPE_BENIGN_PRI = common dso_local global i64 0, align 8
@TYPE_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_dos_name_entries(%struct.super_block* %0, %struct.chain_t* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.chain_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.chain_t, align 8
  %13 = alloca %struct.dentry_t*, align 8
  %14 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.chain_t* %1, %struct.chain_t** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.fs_info_t* %17, %struct.fs_info_t** %14, align 8
  %18 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %19 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @CLUSTER_32(i32 0)
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %25 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %29 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %33 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %37 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %41 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  br label %44

44:                                               ; preds = %139, %31
  %45 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @CLUSTER_32(i32 -1)
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %140

49:                                               ; preds = %44
  %50 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %51 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %140

55:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %103, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %61, %struct.chain_t* %12, i32 %62, i32* null)
  store %struct.dentry_t* %63, %struct.dentry_t** %13, align 8
  %64 = load %struct.dentry_t*, %struct.dentry_t** %13, align 8
  %65 = icmp ne %struct.dentry_t* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %142

67:                                               ; preds = %60
  %68 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %69 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %71, align 8
  %73 = load %struct.dentry_t*, %struct.dentry_t** %13, align 8
  %74 = call i64 %72(%struct.dentry_t* %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @TYPE_UNUSED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %142

80:                                               ; preds = %67
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @TYPE_CRITICAL_PRI, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @TYPE_BENIGN_PRI, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %103

91:                                               ; preds = %85, %80
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @TYPE_ALL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %56

106:                                              ; preds = %56
  %107 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %108 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @CLUSTER_32(i32 0)
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %140

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %118, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %129

126:                                              ; preds = %117
  %127 = call i64 @CLUSTER_32(i32 -1)
  %128 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %122
  br label %139

130:                                              ; preds = %113
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %12, i32 0, i32 0
  %135 = call i64 @FAT_read(%struct.super_block* %131, i64 %133, i64* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %142

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %129
  br label %44

140:                                              ; preds = %112, %54, %44
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %137, %78, %66
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
