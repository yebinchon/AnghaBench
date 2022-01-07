; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_cfg_hw_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_cfg_hw_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.mvumi_hw_regs*, i8*, i8**, %struct.TYPE_2__* }
%struct.mvumi_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_cfg_hw_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_cfg_hw_reg(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvumi_hw_regs*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %7 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %329 [
    i32 129, label %11
    i32 128, label %171
  ]

11:                                               ; preds = %1
  %12 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %22, i32 0, i32 0
  %24 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %23, align 8
  %25 = icmp ne %struct.mvumi_hw_regs* %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %11
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 240, i32 %27)
  %29 = bitcast i8* %28 to %struct.mvumi_hw_regs*
  %30 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %30, i32 0, i32 0
  store %struct.mvumi_hw_regs* %29, %struct.mvumi_hw_regs** %31, align 8
  %32 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %33 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %32, i32 0, i32 0
  %34 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %33, align 8
  %35 = icmp eq %struct.mvumi_hw_regs* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %331

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %11
  %41 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %42 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %41, i32 0, i32 0
  %43 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %42, align 8
  store %struct.mvumi_hw_regs* %43, %struct.mvumi_hw_regs** %5, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr i8, i8* %44, i64 131332
  %46 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %47 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %46, i32 0, i32 34
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr i8, i8* %48, i64 131336
  %50 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %51 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %50, i32 0, i32 33
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr i8, i8* %52, i64 131340
  %54 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %55 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %54, i32 0, i32 32
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr i8, i8* %56, i64 131584
  %58 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %59 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %58, i32 0, i32 31
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr i8, i8* %60, i64 131596
  %62 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %63 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %62, i32 0, i32 30
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr i8, i8* %64, i64 988160
  %66 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %67 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %66, i32 0, i32 29
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr i8, i8* %68, i64 132096
  %70 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %71 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %70, i32 0, i32 28
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr i8, i8* %72, i64 132104
  %74 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %75 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %74, i32 0, i32 27
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr i8, i8* %76, i64 132108
  %78 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %79 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %78, i32 0, i32 26
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr i8, i8* %80, i64 132144
  %82 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %83 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %82, i32 0, i32 25
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr i8, i8* %84, i64 132148
  %86 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %87 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %86, i32 0, i32 24
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr i8, i8* %88, i64 132152
  %90 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %91 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %90, i32 0, i32 23
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr i8, i8* %92, i64 132156
  %94 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %95 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %94, i32 0, i32 22
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr i8, i8* %96, i64 1288
  %98 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %99 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %98, i32 0, i32 19
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr i8, i8* %100, i64 1292
  %102 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %103 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %102, i32 0, i32 18
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr i8, i8* %104, i64 1304
  %106 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %107 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %106, i32 0, i32 17
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr i8, i8* %108, i64 1308
  %110 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %111 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %110, i32 0, i32 16
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr i8, i8* %112, i64 1384
  %114 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %115 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %114, i32 0, i32 11
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr i8, i8* %116, i64 1456
  %118 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %119 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %118, i32 0, i32 15
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr i8, i8* %120, i64 1460
  %122 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %123 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %122, i32 0, i32 14
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr i8, i8* %124, i64 1348
  %126 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %127 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %126, i32 0, i32 13
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr i8, i8* %128, i64 1352
  %130 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %131 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %130, i32 0, i32 12
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr i8, i8* %132, i64 1376
  %134 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %135 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %134, i32 0, i32 10
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr i8, i8* %136, i64 1384
  %138 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %139 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %138, i32 0, i32 11
  store i8* %137, i8** %139, align 8
  %140 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %141 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %140, i32 0, i32 0
  store i32 256, i32* %141, align 8
  %142 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %143 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %142, i32 0, i32 1
  store i32 64, i32* %143, align 4
  %144 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %145 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %144, i32 0, i32 2
  store i32 2, i32* %145, align 8
  %146 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %147 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %146, i32 0, i32 3
  store i32 4096, i32* %147, align 4
  %148 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %149 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %148, i32 0, i32 4
  store i32 2, i32* %149, align 8
  %150 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %151 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %150, i32 0, i32 5
  store i32 256, i32* %151, align 4
  %152 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %153 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %152, i32 0, i32 6
  store i32 4096, i32* %153, align 8
  %154 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %155 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %154, i32 0, i32 7
  store i32 4095, i32* %155, align 4
  %156 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %157 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %156, i32 0, i32 8
  store i32 1073741823, i32* %157, align 8
  %158 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %159 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %162 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %160, %163
  %165 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %166 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  %169 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %170 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 4
  br label %330

171:                                              ; preds = %1
  %172 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %173 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %172, i32 0, i32 2
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 2
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %178 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %180 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %4, align 8
  %182 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %183 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %182, i32 0, i32 0
  %184 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %183, align 8
  %185 = icmp ne %struct.mvumi_hw_regs* %184, null
  br i1 %185, label %200, label %186

186:                                              ; preds = %171
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call i8* @kzalloc(i32 240, i32 %187)
  %189 = bitcast i8* %188 to %struct.mvumi_hw_regs*
  %190 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %191 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %190, i32 0, i32 0
  store %struct.mvumi_hw_regs* %189, %struct.mvumi_hw_regs** %191, align 8
  %192 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %193 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %192, i32 0, i32 0
  %194 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %193, align 8
  %195 = icmp eq %struct.mvumi_hw_regs* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %331

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %171
  %201 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %202 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %201, i32 0, i32 0
  %203 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %202, align 8
  store %struct.mvumi_hw_regs* %203, %struct.mvumi_hw_regs** %5, align 8
  %204 = load i8*, i8** %4, align 8
  %205 = getelementptr i8, i8* %204, i64 131332
  %206 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %207 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %206, i32 0, i32 34
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr i8, i8* %208, i64 65804
  %210 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %211 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %210, i32 0, i32 33
  store i8* %209, i8** %211, align 8
  %212 = load i8*, i8** %4, align 8
  %213 = getelementptr i8, i8* %212, i64 65800
  %214 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %215 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %214, i32 0, i32 32
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr i8, i8* %216, i64 66048
  %218 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %219 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %218, i32 0, i32 31
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** %4, align 8
  %221 = getelementptr i8, i8* %220, i64 66060
  %222 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %223 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %222, i32 0, i32 30
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** %4, align 8
  %225 = getelementptr i8, i8* %224, i64 988160
  %226 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %227 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %226, i32 0, i32 29
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = getelementptr i8, i8* %228, i64 66656
  %230 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %231 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %230, i32 0, i32 28
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** %4, align 8
  %233 = getelementptr i8, i8* %232, i64 66688
  %234 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %235 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %234, i32 0, i32 27
  store i8* %233, i8** %235, align 8
  %236 = load i8*, i8** %4, align 8
  %237 = getelementptr i8, i8* %236, i64 66692
  %238 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %239 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %238, i32 0, i32 26
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** %4, align 8
  %241 = getelementptr i8, i8* %240, i64 66560
  %242 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %243 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %242, i32 0, i32 25
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** %4, align 8
  %245 = getelementptr i8, i8* %244, i64 66564
  %246 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %247 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %246, i32 0, i32 24
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** %4, align 8
  %249 = getelementptr i8, i8* %248, i64 66592
  %250 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %251 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %250, i32 0, i32 23
  store i8* %249, i8** %251, align 8
  %252 = load i8*, i8** %4, align 8
  %253 = getelementptr i8, i8* %252, i64 66596
  %254 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %255 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %254, i32 0, i32 22
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** %4, align 8
  %257 = getelementptr i8, i8* %256, i64 65800
  %258 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %259 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %258, i32 0, i32 21
  store i8* %257, i8** %259, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = getelementptr i8, i8* %260, i64 65804
  %262 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %263 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %262, i32 0, i32 20
  store i8* %261, i8** %263, align 8
  %264 = load i8*, i8** %4, align 8
  %265 = getelementptr i8, i8* %264, i64 16392
  %266 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %267 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %266, i32 0, i32 19
  store i8* %265, i8** %267, align 8
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr i8, i8* %268, i64 16396
  %270 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %271 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %270, i32 0, i32 18
  store i8* %269, i8** %271, align 8
  %272 = load i8*, i8** %4, align 8
  %273 = getelementptr i8, i8* %272, i64 16408
  %274 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %275 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %274, i32 0, i32 17
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** %4, align 8
  %277 = getelementptr i8, i8* %276, i64 16412
  %278 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %279 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %278, i32 0, i32 16
  store i8* %277, i8** %279, align 8
  %280 = load i8*, i8** %4, align 8
  %281 = getelementptr i8, i8* %280, i64 16472
  %282 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %283 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %282, i32 0, i32 15
  store i8* %281, i8** %283, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = getelementptr i8, i8* %284, i64 16476
  %286 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %287 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %286, i32 0, i32 14
  store i8* %285, i8** %287, align 8
  %288 = load i8*, i8** %4, align 8
  %289 = getelementptr i8, i8* %288, i64 16492
  %290 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %291 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %290, i32 0, i32 13
  store i8* %289, i8** %291, align 8
  %292 = load i8*, i8** %4, align 8
  %293 = getelementptr i8, i8* %292, i64 16496
  %294 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %295 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %294, i32 0, i32 12
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** %4, align 8
  %297 = getelementptr i8, i8* %296, i64 16512
  %298 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %299 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %298, i32 0, i32 11
  store i8* %297, i8** %299, align 8
  %300 = load i8*, i8** %4, align 8
  %301 = getelementptr i8, i8* %300, i64 16520
  %302 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %303 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %302, i32 0, i32 10
  store i8* %301, i8** %303, align 8
  %304 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %305 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %304, i32 0, i32 0
  store i32 16, i32* %305, align 8
  %306 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %307 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %306, i32 0, i32 2
  store i32 4096, i32* %307, align 8
  %308 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %309 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %308, i32 0, i32 1
  store i32 536870912, i32* %309, align 4
  %310 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %311 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %310, i32 0, i32 3
  store i32 16384, i32* %311, align 4
  %312 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %313 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %312, i32 0, i32 7
  store i32 16383, i32* %313, align 4
  %314 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %315 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %314, i32 0, i32 4
  store i32 1, i32* %315, align 8
  %316 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %317 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %316, i32 0, i32 6
  store i32 2, i32* %317, align 8
  %318 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %319 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %318, i32 0, i32 8
  store i32 1073741823, i32* %319, align 8
  %320 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %321 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %324 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %322, %325
  %327 = load %struct.mvumi_hw_regs*, %struct.mvumi_hw_regs** %5, align 8
  %328 = getelementptr inbounds %struct.mvumi_hw_regs, %struct.mvumi_hw_regs* %327, i32 0, i32 9
  store i32 %326, i32* %328, align 4
  br label %330

329:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %331

330:                                              ; preds = %200, %40
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %330, %329, %196, %36
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
