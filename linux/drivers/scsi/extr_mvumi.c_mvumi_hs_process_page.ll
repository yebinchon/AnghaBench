; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_hs_process_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_hs_process_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mvumi_hs_header = type { i8, i32, i32 }
%struct.mvumi_hs_page1 = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"checksum error\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FW version:%d\0A\00", align 1
@HS_CAPABILITY_SUPPORT_COMPACT_SG = common dso_local global i32 0, align 4
@HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"handshake: page code error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, %struct.mvumi_hs_header*)* @mvumi_hs_process_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_hs_process_page(%struct.mvumi_hba* %0, %struct.mvumi_hs_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca %struct.mvumi_hs_header*, align 8
  %6 = alloca %struct.mvumi_hs_page1*, align 8
  %7 = alloca i8, align 1
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store %struct.mvumi_hs_header* %1, %struct.mvumi_hs_header** %5, align 8
  %8 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %5, align 8
  %9 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %5, align 8
  %10 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call zeroext i8 @mvumi_calculate_checksum(%struct.mvumi_hs_header* %8, i32 %11)
  store i8 %12, i8* %7, align 1
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  %15 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %5, align 8
  %16 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %22 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %21, i32 0, i32 7
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %125

26:                                               ; preds = %2
  %27 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %5, align 8
  %28 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %118 [
    i32 128, label %30
  ]

30:                                               ; preds = %26
  %31 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %5, align 8
  %32 = bitcast %struct.mvumi_hs_header* %31 to %struct.mvumi_hs_page1*
  store %struct.mvumi_hs_page1* %32, %struct.mvumi_hs_page1** %6, align 8
  %33 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %34 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %37 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %39 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %42 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %44 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %47 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %49 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %52 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %54 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %57 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %59 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %62 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %64 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 1, %65
  %67 = shl i32 %66, 2
  %68 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %69 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %71 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %74 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %76 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = shl i32 %78, 2
  %80 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %81 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %83 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %82, i32 0, i32 7
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %87 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %92 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HS_CAPABILITY_SUPPORT_COMPACT_SG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %30
  %98 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %99 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %98, i32 0, i32 6
  store i32 22, i32* %99, align 8
  br label %103

100:                                              ; preds = %30
  %101 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %102 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %101, i32 0, i32 6
  store i32 27, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %105 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct.mvumi_hs_page1*, %struct.mvumi_hs_page1** %6, align 8
  %112 = getelementptr inbounds %struct.mvumi_hs_page1, %struct.mvumi_hs_page1* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %116 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %110, %103
  br label %124

118:                                              ; preds = %26
  %119 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %120 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %119, i32 0, i32 7
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %125

124:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %118, %20
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local zeroext i8 @mvumi_calculate_checksum(%struct.mvumi_hs_header*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
