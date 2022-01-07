; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_setup_read_ccws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_setup_read_ccws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i8*, i32, i8* }
%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_7__* }
%struct.lcs_header = type { i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ireadccw\00", align 1
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@LCS_CCW_READ = common dso_local global i32 0, align 4
@LCS_IOBUFFERSIZE = common dso_local global i8* null, align 8
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@CCW_FLAG_PCI = common dso_local global i32 0, align 4
@LCS_ILLEGAL_OFFSET = common dso_local global i32 0, align 4
@lcs_get_frames_cb = common dso_local global i32 0, align 4
@LCS_BUF_STATE_READY = common dso_local global i32 0, align 4
@CCW_FLAG_SUSPEND = common dso_local global i32 0, align 4
@LCS_CCW_TRANSFER = common dso_local global i32 0, align 4
@LCS_CH_STATE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*)* @lcs_setup_read_ccws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_setup_read_ccws(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %4 = load i32, i32* @setup, align 4
  %5 = call i32 @LCS_DBF_TEXT(i32 2, i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %7 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(%struct.TYPE_7__* %9, i32 0, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %110, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %113

20:                                               ; preds = %16
  %21 = load i32, i32* @LCS_CCW_READ, align 4
  %22 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %23 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 %21, i32* %29, align 8
  %30 = load i8*, i8** @LCS_IOBUFFERSIZE, align 8
  %31 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i8* %30, i8** %38, align 8
  %39 = load i32, i32* @CCW_FLAG_CC, align 4
  %40 = load i32, i32* @CCW_FLAG_SLI, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CCW_FLAG_PCI, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %45 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %43, i32* %51, align 8
  %52 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %53 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i64 @__pa(%struct.TYPE_7__* %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %64 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i8* %62, i8** %70, align 8
  %71 = load i32, i32* @LCS_ILLEGAL_OFFSET, align 4
  %72 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %73 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = bitcast %struct.TYPE_7__* %80 to %struct.lcs_header*
  %82 = getelementptr inbounds %struct.lcs_header, %struct.lcs_header* %81, i32 0, i32 0
  store i32 %71, i32* %82, align 4
  %83 = load i32, i32* @lcs_get_frames_cb, align 4
  %84 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %85 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %83, i32* %91, align 4
  %92 = load i32, i32* @LCS_BUF_STATE_READY, align 4
  %93 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %94 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 %92, i32* %100, align 8
  %101 = load i8*, i8** @LCS_IOBUFFERSIZE, align 8
  %102 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %103 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i8* %101, i8** %109, align 8
  br label %110

110:                                              ; preds = %20
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %16

113:                                              ; preds = %16
  %114 = load i32, i32* @CCW_FLAG_PCI, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %117 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %115
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @CCW_FLAG_PCI, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %127 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %125
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* @CCW_FLAG_SUSPEND, align 4
  %138 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %139 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %137
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @LCS_CCW_TRANSFER, align 4
  %150 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %151 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32 %149, i32* %157, align 8
  %158 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %159 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = call i64 @__pa(%struct.TYPE_7__* %161)
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %165 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  store i8* %163, i8** %171, align 8
  %172 = load i32, i32* @LCS_CH_STATE_INIT, align 4
  %173 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %174 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %177 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %180 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @__pa(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
