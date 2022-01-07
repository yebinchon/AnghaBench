; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_stor_access_xfer_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_stor_access_xfer_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.page = type { i32 }

@TO_XFER_BUF = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_stor_access_xfer_buf(i8* %0, i32 %1, %struct.scsi_cmnd* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %23 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %6
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %29 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %28)
  %30 = icmp uge i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %185

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %35 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %35, %37
  %39 = call i32 @min(i32 %33, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %41 = call i64 @scsi_sglist(%struct.scsi_cmnd* %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %15, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @TO_XFER_BUF, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @memcpy(i8* %51, i8* %52, i32 %53)
  br label %60

55:                                               ; preds = %32
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %183

65:                                               ; preds = %6
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %67 = call i64 @scsi_sglist(%struct.scsi_cmnd* %66)
  %68 = inttoptr i64 %67 to %struct.scatterlist*
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %68, i64 %71
  store %struct.scatterlist* %72, %struct.scatterlist** %16, align 8
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %181, %65
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %81 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %80)
  %82 = icmp ult i32 %79, %81
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  br i1 %84, label %85, label %182

85:                                               ; preds = %83
  %86 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %87 = call %struct.page* @sg_page(%struct.scatterlist* %86)
  %88 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %90, %92
  %94 = load i32, i32* @PAGE_SHIFT, align 4
  %95 = lshr i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.page, %struct.page* %87, i64 %96
  store %struct.page* %97, %struct.page** %17, align 8
  %98 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %99 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %100, %102
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = and i32 %103, %105
  store i32 %106, i32* %18, align 4
  %107 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %108 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = sub i32 %109, %111
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %14, align 4
  %116 = sub i32 %114, %115
  %117 = icmp ugt i32 %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %85
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %14, align 4
  %121 = sub i32 %119, %120
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %133

126:                                              ; preds = %85
  %127 = load i32*, i32** %12, align 8
  store i32 0, i32* %127, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %132 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %131, i32 1
  store %struct.scatterlist* %132, %struct.scatterlist** %16, align 8
  br label %133

133:                                              ; preds = %126, %118
  br label %134

134:                                              ; preds = %170, %133
  %135 = load i32, i32* %19, align 4
  %136 = icmp ugt i32 %135, 0
  br i1 %136, label %137, label %181

137:                                              ; preds = %134
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = load i32, i32* %18, align 4
  %141 = sub i32 %139, %140
  %142 = call i32 @min(i32 %138, i32 %141)
  store i32 %142, i32* %20, align 4
  %143 = load %struct.page*, %struct.page** %17, align 8
  %144 = call i8* @kmap(%struct.page* %143)
  store i8* %144, i8** %21, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @TO_XFER_BUF, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %137
  %149 = load i8*, i8** %21, align 8
  %150 = load i32, i32* %18, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %14, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @memcpy(i8* %152, i8* %156, i32 %157)
  br label %170

159:                                              ; preds = %137
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %14, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8*, i8** %21, align 8
  %165 = load i32, i32* %18, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i32, i32* %20, align 4
  %169 = call i32 @memcpy(i8* %163, i8* %167, i32 %168)
  br label %170

170:                                              ; preds = %159, %148
  %171 = load %struct.page*, %struct.page** %17, align 8
  %172 = call i32 @kunmap(%struct.page* %171)
  store i32 0, i32* %18, align 4
  %173 = load %struct.page*, %struct.page** %17, align 8
  %174 = getelementptr inbounds %struct.page, %struct.page* %173, i32 1
  store %struct.page* %174, %struct.page** %17, align 8
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %14, align 4
  %177 = add i32 %176, %175
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %19, align 4
  %180 = sub i32 %179, %178
  store i32 %180, i32* %19, align 4
  br label %134

181:                                              ; preds = %134
  br label %73

182:                                              ; preds = %83
  br label %183

183:                                              ; preds = %182, %60
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %31
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
