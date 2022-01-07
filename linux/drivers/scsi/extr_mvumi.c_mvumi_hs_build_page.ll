; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_hs_build_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_hs_build_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mvumi_hba = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mvumi_hs_header = type { i32, i32, i8*, i32 }
%struct.mvumi_hs_page2 = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mvumi_hs_page4 = type { i8*, i8*, i32, i32, i8*, i8*, i8*, i8* }
%struct.mvumi_hs_page3 = type { i32 }

@HS_CAPABILITY_SUPPORT_DYN_SRC = common dso_local global i32 0, align 4
@VER_MAJOR = common dso_local global i32 0, align 4
@VER_MINOR = common dso_local global i32 0, align 4
@VER_OEM = common dso_local global i32 0, align 4
@VER_BUILD = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot build page, code[0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, %struct.mvumi_hs_header*)* @mvumi_hs_build_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_hs_build_page(%struct.mvumi_hba* %0, %struct.mvumi_hs_header* %1) #0 {
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca %struct.mvumi_hs_header*, align 8
  %5 = alloca %struct.mvumi_hs_page2*, align 8
  %6 = alloca %struct.mvumi_hs_page4*, align 8
  %7 = alloca %struct.mvumi_hs_page3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store %struct.mvumi_hs_header* %1, %struct.mvumi_hs_header** %4, align 8
  %10 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %11 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %185 [
    i32 128, label %13
    i32 129, label %76
    i32 130, label %95
  ]

13:                                               ; preds = %2
  %14 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %15 = bitcast %struct.mvumi_hs_header* %14 to %struct.mvumi_hs_page2*
  store %struct.mvumi_hs_page2* %15, %struct.mvumi_hs_page2** %5, align 8
  %16 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %17 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %16, i32 0, i32 1
  store i32 40, i32* %17, align 4
  %18 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %19 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %22 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %20, i32 0, i32 %23)
  %25 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %26 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %25, i32 0, i32 0
  store i32 3, i32* %26, align 4
  %27 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %28 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HS_CAPABILITY_SUPPORT_DYN_SRC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %35 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %34, i32 0, i32 1
  store i32 8, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %13
  %37 = load i32, i32* @VER_MAJOR, align 4
  %38 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %39 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @VER_MINOR, align 4
  %42 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %43 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @VER_OEM, align 4
  %46 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %47 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @VER_BUILD, align 4
  %50 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %51 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %54 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %53, i32 0, i32 6
  store i32 0, i32* %54, align 4
  %55 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %56 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %55, i32 0, i32 5
  store i32 0, i32* %56, align 4
  %57 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %58 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %57, i32 0, i32 4
  store i32 0, i32* %58, align 4
  %59 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %60 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = call i32 (...) @ktime_get_real_seconds()
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_tz, i32 0, i32 0), align 4
  %64 = mul nsw i32 %63, 60
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.mvumi_hs_page2*, %struct.mvumi_hs_page2** %5, align 8
  %68 = getelementptr inbounds %struct.mvumi_hs_page2, %struct.mvumi_hs_page2* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %70 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %71 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @mvumi_calculate_checksum(%struct.mvumi_hs_header* %69, i32 %72)
  %74 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %75 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %194

76:                                               ; preds = %2
  %77 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %78 = bitcast %struct.mvumi_hs_header* %77 to %struct.mvumi_hs_page3*
  store %struct.mvumi_hs_page3* %78, %struct.mvumi_hs_page3** %7, align 8
  %79 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %80 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %82 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %85 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memset(i32 %83, i32 0, i32 %86)
  %88 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %89 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %90 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @mvumi_calculate_checksum(%struct.mvumi_hs_header* %88, i32 %91)
  %93 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %94 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %194

95:                                               ; preds = %2
  %96 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %97 = bitcast %struct.mvumi_hs_header* %96 to %struct.mvumi_hs_page4*
  store %struct.mvumi_hs_page4* %97, %struct.mvumi_hs_page4** %6, align 8
  %98 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %99 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %98, i32 0, i32 1
  store i32 52, i32* %99, align 4
  %100 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %101 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %104 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memset(i32 %102, i32 0, i32 %105)
  %107 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %108 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @lower_32_bits(i32 %109)
  %111 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %112 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %114 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @upper_32_bits(i32 %115)
  %117 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %118 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %120 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @lower_32_bits(i32 %121)
  %123 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %124 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  %125 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %126 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @upper_32_bits(i32 %127)
  %129 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %130 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %132 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %135 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %137 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %140 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %142 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %95
  %148 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %149 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %148, i32 0, i32 2
  %150 = bitcast i32* %149 to i64*
  %151 = load i32, i32* @BITS_PER_LONG, align 4
  %152 = call i8* @find_first_bit(i64* %150, i32 %151)
  %153 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %154 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %156 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %155, i32 0, i32 2
  %157 = bitcast i32* %156 to i64*
  %158 = load i32, i32* @BITS_PER_LONG, align 4
  %159 = call i8* @find_first_bit(i64* %157, i32 %158)
  %160 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %161 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %177

162:                                              ; preds = %95
  %163 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %164 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %169 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %171 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = load %struct.mvumi_hs_page4*, %struct.mvumi_hs_page4** %6, align 8
  %176 = getelementptr inbounds %struct.mvumi_hs_page4, %struct.mvumi_hs_page4* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %162, %147
  %178 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %179 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %180 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @mvumi_calculate_checksum(%struct.mvumi_hs_header* %178, i32 %181)
  %183 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %184 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  br label %194

185:                                              ; preds = %2
  %186 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %187 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %186, i32 0, i32 1
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %4, align 8
  %191 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dev_err(i32* %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %185, %177, %76, %36
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i8* @mvumi_calculate_checksum(%struct.mvumi_hs_header*, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i8* @find_first_bit(i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
