; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_write_mode_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_write_mode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.st_request = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@MODE_SELECT = common dso_local global i8 0, align 1
@MODE_SELECT_PAGE_FORMAT = common dso_local global i8 0, align 1
@MODE_HEADER_LENGTH = common dso_local global i32 0, align 4
@MH_OFF_BDESCS_LENGTH = common dso_local global i64 0, align 8
@MP_OFF_PAGE_LENGTH = common dso_local global i32 0, align 4
@MH_OFF_DATA_LENGTH = common dso_local global i64 0, align 8
@MH_OFF_MEDIUM_TYPE = common dso_local global i64 0, align 8
@MH_BIT_WP = common dso_local global i32 0, align 4
@MH_OFF_DEV_SPECIFIC = common dso_local global i64 0, align 8
@MP_MSK_PAGE_NBR = common dso_local global i32 0, align 4
@MP_OFF_PAGE_NBR = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32, i32)* @write_mode_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mode_page(%struct.scsi_tape* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_tape*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.st_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = load i8, i8* @MODE_SELECT, align 1
  %21 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %20, i8* %21, align 16
  %22 = load i8, i8* @MODE_SELECT_PAGE_FORMAT, align 1
  %23 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* @MODE_HEADER_LENGTH, align 4
  %25 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MH_OFF_BDESCS_LENGTH, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %24, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %34, %45
  %47 = add nsw i32 %46, 2
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, i8* %17, i64 4
  store i8 %48, i8* %49, align 4
  %50 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @MH_OFF_DATA_LENGTH, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @MH_OFF_MEDIUM_TYPE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* @MH_BIT_WP, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @MH_OFF_DEV_SPECIFIC, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %65
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @MP_MSK_PAGE_NBR, align 4
  %76 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @MP_OFF_PAGE_NBR, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %75
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %3
  %91 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %92 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  br label %102

94:                                               ; preds = %3
  %95 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %96 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %94, %90
  %103 = phi i32 [ %93, %90 ], [ %101, %94 ]
  store i32 %103, i32* %12, align 4
  %104 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %105 = getelementptr inbounds i8, i8* %17, i64 4
  %106 = load i8, i8* %105, align 4
  %107 = load i32, i32* @DMA_TO_DEVICE, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call %struct.st_request* @st_do_scsi(i32* null, %struct.scsi_tape* %104, i8* %17, i8 zeroext %106, i32 %107, i32 %108, i32 0, i32 1)
  store %struct.st_request* %109, %struct.st_request** %11, align 8
  %110 = load %struct.st_request*, %struct.st_request** %11, align 8
  %111 = icmp eq %struct.st_request* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %126

118:                                              ; preds = %102
  %119 = load %struct.st_request*, %struct.st_request** %11, align 8
  %120 = call i32 @st_release_request(%struct.st_request* %119)
  %121 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %118, %112
  %127 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.st_request* @st_do_scsi(i32*, %struct.scsi_tape*, i8*, i8 zeroext, i32, i32, i32, i32) #2

declare dso_local i32 @st_release_request(%struct.st_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
