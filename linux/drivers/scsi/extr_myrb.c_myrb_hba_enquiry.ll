; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_hba_enquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_hba_enquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.myrb_enquiry*, i32 }
%struct.myrb_enquiry = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MYRB_CMD_ENQUIRY = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Logical Drive %d Now Exists\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Logical Drive %d No Longer Exists\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Deferred Write Error Flag is now %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Event log %d/%d (%d/%d) available\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Logical drive count changed (%d/%d/%d)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MYRB_SECONDARY_MONITOR_INTERVAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"Consistency Check Completed Successfully\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Consistency Check Completed with Error\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Consistency Check Failed - Physical Device Failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Consistency Check Failed - Logical Drive Failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Consistency Check Failed - Other Causes\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Consistency Check Successfully Terminated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.myrb_hba*)* @myrb_hba_enquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @myrb_hba_enquiry(%struct.myrb_hba* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.myrb_hba*, align 8
  %4 = alloca %struct.myrb_enquiry, align 8
  %5 = alloca %struct.myrb_enquiry*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myrb_hba* %0, %struct.myrb_hba** %3, align 8
  %9 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %10 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %9, i32 0, i32 11
  %11 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %10, align 8
  %12 = call i32 @memcpy(%struct.myrb_enquiry* %4, %struct.myrb_enquiry* %11, i32 56)
  %13 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %14 = load i32, i32* @MYRB_CMD_ENQUIRY, align 4
  %15 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %16 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 8
  %18 = call zeroext i16 @myrb_exec_type3(%struct.myrb_hba* %13, i32 %14, i32 %17)
  store i16 %18, i16* %6, align 2
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i16, i16* %6, align 2
  store i16 %25, i16* %2, align 2
  br label %302

26:                                               ; preds = %1
  %27 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %28 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %27, i32 0, i32 11
  %29 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %28, align 8
  store %struct.myrb_enquiry* %29, %struct.myrb_enquiry** %5, align 8
  %30 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %31 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %47, %36
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %44 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* @KERN_CRIT, align 4
  %49 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %50 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %48, i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %40

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %57 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %64 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %73, %62
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i32, i32* @KERN_CRIT, align 4
  %75 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %76 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %74, i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %67

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %83 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %81
  %91 = load i32, i32* @KERN_CRIT, align 4
  %92 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %93 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %96 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %102 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %91, i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %90, %81
  %104 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %105 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %112 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %115 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %117 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %116, i32 0, i32 1
  store i32 1, i32* %117, align 8
  %118 = load i32, i32* @KERN_INFO, align 4
  %119 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %120 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %123 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %126 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %131 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %118, i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %124, i64 %127, i64 %129, i64 %132)
  br label %134

134:                                              ; preds = %110, %103
  %135 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %136 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %141 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %165, label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %148 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %153 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %154, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %160 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %158, %151, %139
  %166 = load i32, i32* @KERN_INFO, align 4
  %167 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %168 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %171 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %174 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %177 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %166, i32 %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %172, i64 %175, i32 %178)
  %180 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %181 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %180, i32 0, i32 2
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %165, %158
  %183 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %184 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %203, label %187

187:                                              ; preds = %182
  %188 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %189 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %190, %192
  br i1 %193, label %203, label %194

194:                                              ; preds = %187
  %195 = load i64, i64* @jiffies, align 8
  %196 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %197 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MYRB_SECONDARY_MONITOR_INTERVAL, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i64 @time_after_eq(i64 %195, i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %194, %187, %182
  %204 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %205 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %208 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 4
  %209 = load i64, i64* @jiffies, align 8
  %210 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %211 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %210, i32 0, i32 7
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %203, %194
  %213 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %214 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 128
  br i1 %216, label %230, label %217

217:                                              ; preds = %212
  %218 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %219 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 135
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 128
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 135
  br i1 %229, label %230, label %242

230:                                              ; preds = %226, %222, %217, %212
  %231 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %232 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %231, i32 0, i32 3
  store i32 1, i32* %232, align 8
  %233 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %234 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %235, %237
  %239 = zext i1 %238 to i32
  %240 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %241 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %240, i32 0, i32 4
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %230, %226
  %243 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %4, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 136
  br i1 %245, label %246, label %291

246:                                              ; preds = %242
  %247 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %248 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  switch i64 %249, label %290 [
    i64 130, label %250
    i64 128, label %256
    i64 135, label %256
    i64 136, label %257
    i64 129, label %260
    i64 134, label %266
    i64 133, label %272
    i64 132, label %278
    i64 131, label %284
  ]

250:                                              ; preds = %246
  %251 = load i32, i32* @KERN_INFO, align 4
  %252 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %253 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %251, i32 %254, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %290

256:                                              ; preds = %246, %246
  br label %290

257:                                              ; preds = %246
  %258 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %259 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %258, i32 0, i32 5
  store i32 1, i32* %259, align 8
  br label %290

260:                                              ; preds = %246
  %261 = load i32, i32* @KERN_INFO, align 4
  %262 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %263 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %261, i32 %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %290

266:                                              ; preds = %246
  %267 = load i32, i32* @KERN_INFO, align 4
  %268 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %269 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %267, i32 %270, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %290

272:                                              ; preds = %246
  %273 = load i32, i32* @KERN_INFO, align 4
  %274 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %275 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %273, i32 %276, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %290

278:                                              ; preds = %246
  %279 = load i32, i32* @KERN_INFO, align 4
  %280 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %281 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %279, i32 %282, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %290

284:                                              ; preds = %246
  %285 = load i32, i32* @KERN_INFO, align 4
  %286 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %287 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %285, i32 %288, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %290

290:                                              ; preds = %246, %284, %278, %272, %266, %260, %257, %256, %250
  br label %300

291:                                              ; preds = %242
  %292 = load %struct.myrb_enquiry*, %struct.myrb_enquiry** %5, align 8
  %293 = getelementptr inbounds %struct.myrb_enquiry, %struct.myrb_enquiry* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %294, 136
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load %struct.myrb_hba*, %struct.myrb_hba** %3, align 8
  %298 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %297, i32 0, i32 5
  store i32 1, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %291
  br label %300

300:                                              ; preds = %299, %290
  %301 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  store i16 %301, i16* %2, align 2
  br label %302

302:                                              ; preds = %300, %24
  %303 = load i16, i16* %2, align 2
  ret i16 %303
}

declare dso_local i32 @memcpy(%struct.myrb_enquiry*, %struct.myrb_enquiry*, i32) #1

declare dso_local zeroext i16 @myrb_exec_type3(%struct.myrb_hba*, i32, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
