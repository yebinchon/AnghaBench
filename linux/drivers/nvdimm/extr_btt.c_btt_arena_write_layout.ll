; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_arena_write_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_arena_write_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, %struct.nd_btt* }
%struct.nd_btt = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btt_sb = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.nd_gen_sb = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTT_SIG = common dso_local global i32 0, align 4
@BTT_SIG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*)* @btt_arena_write_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_arena_write_layout(%struct.arena_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arena_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.btt_sb*, align 8
  %7 = alloca %struct.nd_btt*, align 8
  %8 = alloca i32*, align 8
  store %struct.arena_info* %0, %struct.arena_info** %3, align 8
  %9 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %10 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %9, i32 0, i32 14
  %11 = load %struct.nd_btt*, %struct.nd_btt** %10, align 8
  store %struct.nd_btt* %11, %struct.nd_btt** %7, align 8
  %12 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %13 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32* @nd_dev_to_uuid(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %18 = call i32 @btt_map_init(%struct.arena_info* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %169

23:                                               ; preds = %1
  %24 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %25 = call i32 @btt_log_init(%struct.arena_info* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %169

30:                                               ; preds = %23
  %31 = load i32, i32* @GFP_NOIO, align 4
  %32 = call %struct.btt_sb* @kzalloc(i32 136, i32 %31)
  store %struct.btt_sb* %32, %struct.btt_sb** %6, align 8
  %33 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %34 = icmp ne %struct.btt_sb* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %169

38:                                               ; preds = %30
  %39 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %40 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BTT_SIG, align 4
  %43 = load i32, i32* @BTT_SIG_LEN, align 4
  %44 = call i32 @strncpy(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %46 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %49 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @memcpy(i32 %47, i32* %50, i32 16)
  %52 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %53 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @memcpy(i32 %54, i32* %55, i32 16)
  %57 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %58 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %62 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %64 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_le16(i32 %65)
  %67 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %68 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %67, i32 0, i32 14
  store i8* %66, i8** %68, align 8
  %69 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %70 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %74 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %73, i32 0, i32 13
  store i8* %72, i8** %74, align 8
  %75 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %76 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %80 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %82 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %86 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %85, i32 0, i32 11
  store i8* %84, i8** %86, align 8
  %87 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %88 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %92 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %91, i32 0, i32 10
  store i8* %90, i8** %92, align 8
  %93 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %94 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %98 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %97, i32 0, i32 9
  store i8* %96, i8** %98, align 8
  %99 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %100 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %104 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = call i8* @cpu_to_le32(i32 136)
  %106 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %107 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %109 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %108, i32 0, i32 11
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @cpu_to_le64(i64 %110)
  %112 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %113 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %115 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %118 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = call i8* @cpu_to_le64(i64 %120)
  %122 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %123 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %125 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %128 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  %131 = call i8* @cpu_to_le64(i64 %130)
  %132 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %133 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %135 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %138 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  %141 = call i8* @cpu_to_le64(i64 %140)
  %142 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %143 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %145 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %148 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = call i8* @cpu_to_le64(i64 %150)
  %152 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %153 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %155 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %154, i32 0, i32 1
  store i8* null, i8** %155, align 8
  %156 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %157 = bitcast %struct.btt_sb* %156 to %struct.nd_gen_sb*
  %158 = call i64 @nd_sb_checksum(%struct.nd_gen_sb* %157)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i8* @cpu_to_le64(i64 %159)
  %161 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %162 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %164 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %165 = call i32 @btt_info_write(%struct.arena_info* %163, %struct.btt_sb* %164)
  store i32 %165, i32* %4, align 4
  %166 = load %struct.btt_sb*, %struct.btt_sb** %6, align 8
  %167 = call i32 @kfree(%struct.btt_sb* %166)
  %168 = load i32, i32* %4, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %38, %35, %28, %21
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32* @nd_dev_to_uuid(i32*) #1

declare dso_local i32 @btt_map_init(%struct.arena_info*) #1

declare dso_local i32 @btt_log_init(%struct.arena_info*) #1

declare dso_local %struct.btt_sb* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @nd_sb_checksum(%struct.nd_gen_sb*) #1

declare dso_local i32 @btt_info_write(%struct.arena_info*, %struct.btt_sb*) #1

declare dso_local i32 @kfree(%struct.btt_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
