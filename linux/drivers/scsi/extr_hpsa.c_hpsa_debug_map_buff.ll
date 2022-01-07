; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_debug_map_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_debug_map_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.raid_map_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.raid_map_disk_data* }
%struct.raid_map_disk_data = type { i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"structure_size = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"volume_blk_size = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"volume_blk_cnt = 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"physicalBlockShift = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"parity_rotation_shift = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"strip_size = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"disk_starting_blk = 0x%llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"disk_blk_cnt = 0x%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"data_disks_per_row = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"metadata_disks_per_row = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"row_cnt = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"layout_map_count = %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"flags = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"encryption = %s\0A\00", align 1
@RAID_MAP_FLAG_ENCRYPT_ON = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"dekindex = %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Map%u:\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"  Row%u:\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"    D%02u: h=0x%04x xor=%u,%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"    M%02u: h=0x%04x xor=%u,%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, %struct.raid_map_data*)* @hpsa_debug_map_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_debug_map_buff(%struct.ctlr_info* %0, i32 %1, %struct.raid_map_data* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.raid_map_data*, align 8
  %7 = alloca %struct.raid_map_disk_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.raid_map_data* %2, %struct.raid_map_data** %6, align 8
  %14 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %15 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %14, i32 0, i32 14
  %16 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %15, align 8
  %17 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %16, i64 0
  store %struct.raid_map_disk_data* %17, %struct.raid_map_disk_data** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %271

21:                                               ; preds = %3
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %271

27:                                               ; preds = %21
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %33 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 (i32*, i8*, ...) @dev_info(i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %38 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %42 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i32 (i32*, i8*, ...) @dev_info(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %51 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le64_to_cpu(i32 %52)
  %54 = call i32 (i32*, i8*, ...) @dev_info(i32* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %56 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %60 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @dev_info(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %64 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %68 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %72 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %76 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = call i32 (i32*, i8*, ...) @dev_info(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %85 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le64_to_cpu(i32 %86)
  %88 = call i32 (i32*, i8*, ...) @dev_info(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %90 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %94 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @le64_to_cpu(i32 %95)
  %97 = call i32 (i32*, i8*, ...) @dev_info(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %99 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %103 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16_to_cpu(i32 %104)
  %106 = call i32 (i32*, i8*, ...) @dev_info(i32* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %108 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %112 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = call i32 (i32*, i8*, ...) @dev_info(i32* %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %117 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %121 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = call i32 (i32*, i8*, ...) @dev_info(i32* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %126 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %130 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = call i32 (i32*, i8*, ...) @dev_info(i32* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %132)
  %134 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %135 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %139 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = call i32 (i32*, i8*, ...) @dev_info(i32* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %141)
  %143 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %144 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %148 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = load i32, i32* @RAID_MAP_FLAG_ENCRYPT_ON, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  %156 = call i32 (i32*, i8*, ...) @dev_info(i32* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %155)
  %157 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %158 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %162 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @le16_to_cpu(i32 %163)
  %165 = call i32 (i32*, i8*, ...) @dev_info(i32* %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %164)
  %166 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %167 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le16_to_cpu(i32 %168)
  store i32 %169, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %268, %27
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %271

174:                                              ; preds = %170
  %175 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %176 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (i32*, i8*, ...) @dev_info(i32* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %179)
  %181 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %182 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @le16_to_cpu(i32 %183)
  store i32 %184, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %185

185:                                              ; preds = %264, %174
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %267

189:                                              ; preds = %185
  %190 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %191 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %190, i32 0, i32 1
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %9, align 4
  %195 = call i32 (i32*, i8*, ...) @dev_info(i32* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %194)
  %196 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %197 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le16_to_cpu(i32 %198)
  store i32 %199, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %200

200:                                              ; preds = %224, %189
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %229

204:                                              ; preds = %200
  %205 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %206 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %211 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %214 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %219 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32*, i8*, ...) @dev_info(i32* %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %209, i32 %212, i32 %217, i32 %222)
  br label %224

224:                                              ; preds = %204
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  %227 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %228 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %227, i32 1
  store %struct.raid_map_disk_data* %228, %struct.raid_map_disk_data** %7, align 8
  br label %200

229:                                              ; preds = %200
  %230 = load %struct.raid_map_data*, %struct.raid_map_data** %6, align 8
  %231 = getelementptr inbounds %struct.raid_map_data, %struct.raid_map_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @le16_to_cpu(i32 %232)
  store i32 %233, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %234

234:                                              ; preds = %258, %229
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %263

238:                                              ; preds = %234
  %239 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %240 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %239, i32 0, i32 1
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %245 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %248 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %253 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i32*, i8*, ...) @dev_info(i32* %242, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %243, i32 %246, i32 %251, i32 %256)
  br label %258

258:                                              ; preds = %238
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  %261 = load %struct.raid_map_disk_data*, %struct.raid_map_disk_data** %7, align 8
  %262 = getelementptr inbounds %struct.raid_map_disk_data, %struct.raid_map_disk_data* %261, i32 1
  store %struct.raid_map_disk_data* %262, %struct.raid_map_disk_data** %7, align 8
  br label %234

263:                                              ; preds = %234
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %9, align 4
  br label %185

267:                                              ; preds = %185
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %170

271:                                              ; preds = %20, %26, %170
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
