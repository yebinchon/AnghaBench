; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_readpages_fill_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_readpages_fill_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.cifs_readdata = type { i32, i32, i64, i32, i32, i64, %struct.page**, %struct.TYPE_3__* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"eof=%llu eof_index=%lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.cifs_readdata*, %struct.iov_iter*, i32)* @readpages_fill_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readpages_fill_pages(%struct.TCP_Server_Info* %0, %struct.cifs_readdata* %1, %struct.iov_iter* %2, i32 %3) #0 {
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.cifs_readdata*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.cifs_readdata* %1, %struct.cifs_readdata** %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %19 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %22 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %24, i32 0, i32 7
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_4__* @CIFS_I(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  br label %40

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ %38, %34 ], [ 0, %39 ]
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @FYI, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @cifs_dbg(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %47 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %50 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %173, %40
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %176

55:                                               ; preds = %51
  %56 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %57 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %56, i32 0, i32 6
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  store %struct.page* %62, %struct.page** %15, align 8
  %63 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %64 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sub i32 %70, %69
  store i32 %71, i32* %16, align 4
  br label %73

72:                                               ; preds = %55
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %17, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %147

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = icmp ugt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.page*, %struct.page** %15, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add i32 %88, %89
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 %91, %92
  %94 = call i32 @zero_user(%struct.page* %87, i32 %90, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %97 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = zext i32 %95 to i64
  store i64 %98, i64* %17, align 8
  store i32 0, i32* %8, align 4
  br label %146

99:                                               ; preds = %83
  %100 = load %struct.page*, %struct.page** %15, align 8
  %101 = getelementptr inbounds %struct.page, %struct.page* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %99
  %106 = load %struct.page*, %struct.page** %15, align 8
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = call i32 @zero_user(%struct.page* %106, i32 0, i32 %107)
  %109 = load %struct.page*, %struct.page** %15, align 8
  %110 = call i32 @lru_cache_add_file(%struct.page* %109)
  %111 = load %struct.page*, %struct.page** %15, align 8
  %112 = call i32 @flush_dcache_page(%struct.page* %111)
  %113 = load %struct.page*, %struct.page** %15, align 8
  %114 = call i32 @SetPageUptodate(%struct.page* %113)
  %115 = load %struct.page*, %struct.page** %15, align 8
  %116 = call i32 @unlock_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %15, align 8
  %118 = call i32 @put_page(%struct.page* %117)
  %119 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %120 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %119, i32 0, i32 6
  %121 = load %struct.page**, %struct.page*** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.page*, %struct.page** %121, i64 %123
  store %struct.page* null, %struct.page** %124, align 8
  %125 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %126 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add i32 %127, -1
  store i32 %128, i32* %126, align 8
  br label %173

129:                                              ; preds = %99
  %130 = load %struct.page*, %struct.page** %15, align 8
  %131 = call i32 @lru_cache_add_file(%struct.page* %130)
  %132 = load %struct.page*, %struct.page** %15, align 8
  %133 = call i32 @unlock_page(%struct.page* %132)
  %134 = load %struct.page*, %struct.page** %15, align 8
  %135 = call i32 @put_page(%struct.page* %134)
  %136 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %137 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %136, i32 0, i32 6
  %138 = load %struct.page**, %struct.page*** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.page*, %struct.page** %138, i64 %140
  store %struct.page* null, %struct.page** %141, align 8
  %142 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %143 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add i32 %144, -1
  store i32 %145, i32* %143, align 8
  br label %173

146:                                              ; preds = %86
  br label %147

147:                                              ; preds = %146, %79
  %148 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %149 = icmp ne %struct.iov_iter* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.page*, %struct.page** %15, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load i64, i64* %17, align 8
  %154 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %155 = call i32 @copy_page_from_iter(%struct.page* %151, i32 %152, i64 %153, %struct.iov_iter* %154)
  store i32 %155, i32* %9, align 4
  br label %162

156:                                              ; preds = %147
  %157 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %158 = load %struct.page*, %struct.page** %15, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info* %157, %struct.page* %158, i32 %159, i64 %160)
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %156, %150
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %176

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %170 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %166, %129, %105
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %51

176:                                              ; preds = %165, %51
  %177 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %178 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @ECONNABORTED, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %188 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  br label %193

190:                                              ; preds = %181, %176
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  br label %193

193:                                              ; preds = %190, %186
  %194 = phi i64 [ %189, %186 ], [ %192, %190 ]
  %195 = trunc i64 %194 to i32
  ret i32 %195
}

declare dso_local %struct.TYPE_4__* @CIFS_I(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @lru_cache_add_file(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @copy_page_from_iter(%struct.page*, i32, i64, %struct.iov_iter*) #1

declare dso_local i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info*, %struct.page*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
