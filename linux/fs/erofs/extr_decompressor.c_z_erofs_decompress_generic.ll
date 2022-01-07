; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_z_erofs_decompress_generic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_z_erofs_decompress_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_decompressor = type { i32 (%struct.z_erofs_decompress_req.0*, i8*)*, i32 (%struct.z_erofs_decompress_req.1*, %struct.list_head.2*)* }
%struct.z_erofs_decompress_req.0 = type opaque
%struct.z_erofs_decompress_req.1 = type opaque
%struct.list_head.2 = type opaque
%struct.z_erofs_decompress_req = type { i32, i32, i32, i32*, i32 }
%struct.list_head = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@decompressors = common dso_local global %struct.z_erofs_decompressor* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_decompress_req*, %struct.list_head*)* @z_erofs_decompress_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_decompress_generic(%struct.z_erofs_decompress_req* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_decompress_req*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_erofs_decompressor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.z_erofs_decompress_req* %0, %struct.z_erofs_decompress_req** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %12 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %13 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %16 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = call i32 @PAGE_ALIGN(i32 %18)
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.z_erofs_decompressor*, %struct.z_erofs_decompressor** @decompressors, align 8
  %23 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %24 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.z_erofs_decompressor, %struct.z_erofs_decompressor* %22, i64 %26
  store %struct.z_erofs_decompressor* %27, %struct.z_erofs_decompressor** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %49

30:                                               ; preds = %2
  %31 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %32 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %37 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @DBG_BUGON(i32 %42)
  %44 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %45 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @kmap_atomic(i32 %47)
  store i8* %48, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %140

49:                                               ; preds = %30, %2
  %50 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %51 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = mul nsw i32 %53, 7
  %55 = sdiv i32 %54, 8
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %49
  %58 = call i8* @erofs_get_pcpubuf(i32 0)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %3, align 4
  br label %168

65:                                               ; preds = %57
  %66 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %67 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load %struct.z_erofs_decompressor*, %struct.z_erofs_decompressor** %7, align 8
  %69 = getelementptr inbounds %struct.z_erofs_decompressor, %struct.z_erofs_decompressor* %68, i32 0, i32 0
  %70 = load i32 (%struct.z_erofs_decompress_req.0*, i8*)*, i32 (%struct.z_erofs_decompress_req.0*, i8*)** %69, align 8
  %71 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %72 = bitcast %struct.z_erofs_decompress_req* %71 to %struct.z_erofs_decompress_req.0*
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 %70(%struct.z_erofs_decompress_req.0* %72, i8* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %65
  %78 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %79 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %83 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %86 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @copy_from_pcpubuf(i32* %80, i8* %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %77, %65
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @erofs_put_pcpubuf(i8* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %168

93:                                               ; preds = %49
  %94 = load %struct.z_erofs_decompressor*, %struct.z_erofs_decompressor** %7, align 8
  %95 = getelementptr inbounds %struct.z_erofs_decompressor, %struct.z_erofs_decompressor* %94, i32 0, i32 1
  %96 = load i32 (%struct.z_erofs_decompress_req.1*, %struct.list_head.2*)*, i32 (%struct.z_erofs_decompress_req.1*, %struct.list_head.2*)** %95, align 8
  %97 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %98 = bitcast %struct.z_erofs_decompress_req* %97 to %struct.z_erofs_decompress_req.1*
  %99 = load %struct.list_head*, %struct.list_head** %5, align 8
  %100 = bitcast %struct.list_head* %99 to %struct.list_head.2*
  %101 = call i32 %96(%struct.z_erofs_decompress_req.1* %98, %struct.list_head.2* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %168

106:                                              ; preds = %93
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %111 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @page_address(i32 %113)
  store i8* %114, i8** %9, align 8
  store i32 1, i32* %8, align 4
  br label %140

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %116, %131
  %118 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %119 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @PAGE_KERNEL, align 4
  %123 = call i8* @vm_map_ram(i32* %120, i32 %121, i32 -1, i32 %122)
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  %129 = icmp sge i32 %128, 3
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %117
  br label %133

131:                                              ; preds = %126
  %132 = call i32 (...) @vm_unmap_aliases()
  br label %117

133:                                              ; preds = %130
  %134 = load i8*, i8** %9, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %168

139:                                              ; preds = %133
  store i32 2, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %109, %35
  %141 = load %struct.z_erofs_decompressor*, %struct.z_erofs_decompressor** %7, align 8
  %142 = getelementptr inbounds %struct.z_erofs_decompressor, %struct.z_erofs_decompressor* %141, i32 0, i32 0
  %143 = load i32 (%struct.z_erofs_decompress_req.0*, i8*)*, i32 (%struct.z_erofs_decompress_req.0*, i8*)** %142, align 8
  %144 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %145 = bitcast %struct.z_erofs_decompress_req* %144 to %struct.z_erofs_decompress_req.0*
  %146 = load i8*, i8** %9, align 8
  %147 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %148 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr i8, i8* %146, i64 %150
  %152 = call i32 %143(%struct.z_erofs_decompress_req.0* %145, i8* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %140
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 @kunmap_atomic(i8* %156)
  br label %166

158:                                              ; preds = %140
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @vm_unmap_ram(i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %158
  br label %166

166:                                              ; preds = %165, %155
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %136, %104, %89, %62
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i8* @erofs_get_pcpubuf(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @copy_from_pcpubuf(i32*, i8*, i32, i32) #1

declare dso_local i32 @erofs_put_pcpubuf(i8*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i8* @vm_map_ram(i32*, i32, i32, i32) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @vm_unmap_ram(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
