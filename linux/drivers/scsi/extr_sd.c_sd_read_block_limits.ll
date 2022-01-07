; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_block_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_block_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SD_LBP_UNMAP = common dso_local global i32 0, align 4
@SD_LBP_WS16 = common dso_local global i32 0, align 4
@SD_LBP_WS10 = common dso_local global i32 0, align 4
@SD_LBP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*)* @sd_read_block_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_block_limits(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 12
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  store i32 64, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 64, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @scsi_get_vpd_page(%struct.TYPE_4__* %20, i32 176, i8* %21, i32 64)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %1
  br label %158

25:                                               ; preds = %17
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %26, i32 0, i32 11
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  %33 = call i32 @get_unaligned_be16(i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = mul i32 %33, %34
  %36 = call i32 @blk_queue_io_min(i32 %30, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = call i32 @get_unaligned_be32(i8* %38)
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 12
  %44 = call i32 @get_unaligned_be32(i8* %43)
  %45 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 60
  br i1 %51, label %52, label %157

52:                                               ; preds = %25
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 36
  %55 = call i64 @get_unaligned_be64(i8* %54)
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %57 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %56, i32 0, i32 10
  store i64 %55, i64* %57, align 8
  %58 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %158

63:                                               ; preds = %52
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 20
  %66 = call i32 @get_unaligned_be32(i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 24
  %69 = call i32 @get_unaligned_be32(i8* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %72, %63
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 28
  %82 = call i32 @get_unaligned_be32(i8* %81)
  %83 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %84 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 32
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 32
  %94 = call i32 @get_unaligned_be32(i8* %93)
  %95 = and i32 %94, 2147483647
  %96 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %97 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %91, %79
  %99 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %98
  %104 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %105 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %110 = load i32, i32* @SD_LBP_UNMAP, align 4
  %111 = call i32 @sd_config_discard(%struct.scsi_disk* %109, i32 %110)
  br label %116

112:                                              ; preds = %103
  %113 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %114 = load i32, i32* @SD_LBP_WS16, align 4
  %115 = call i32 @sd_config_discard(%struct.scsi_disk* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %108
  br label %156

117:                                              ; preds = %98
  %118 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %119 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %124 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %129 = load i32, i32* @SD_LBP_UNMAP, align 4
  %130 = call i32 @sd_config_discard(%struct.scsi_disk* %128, i32 %129)
  br label %155

131:                                              ; preds = %122, %117
  %132 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %133 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %138 = load i32, i32* @SD_LBP_WS16, align 4
  %139 = call i32 @sd_config_discard(%struct.scsi_disk* %137, i32 %138)
  br label %154

140:                                              ; preds = %131
  %141 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %142 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %147 = load i32, i32* @SD_LBP_WS10, align 4
  %148 = call i32 @sd_config_discard(%struct.scsi_disk* %146, i32 %147)
  br label %153

149:                                              ; preds = %140
  %150 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %151 = load i32, i32* @SD_LBP_DISABLE, align 4
  %152 = call i32 @sd_config_discard(%struct.scsi_disk* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %136
  br label %155

155:                                              ; preds = %154, %127
  br label %156

156:                                              ; preds = %155, %116
  br label %157

157:                                              ; preds = %156, %25
  br label %158

158:                                              ; preds = %157, %62, %24
  %159 = load i8*, i8** %5, align 8
  %160 = call i32 @kfree(i8* %159)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @scsi_get_vpd_page(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @blk_queue_io_min(i32, i32) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i64 @get_unaligned_be64(i8*) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
