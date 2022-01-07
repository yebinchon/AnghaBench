; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_wdata_prepare_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_wdata_prepare_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_writedata = type { %struct.page** }
%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i32 }

@WB_SYNC_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_writedata*, i32, %struct.address_space*, %struct.writeback_control*, i64, i64*, i64*, i32*)* @wdata_prepare_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdata_prepare_pages(%struct.cifs_writedata* %0, i32 %1, %struct.address_space* %2, %struct.writeback_control* %3, i64 %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca %struct.cifs_writedata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.writeback_control*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  store %struct.cifs_writedata* %0, %struct.cifs_writedata** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.address_space* %2, %struct.address_space** %11, align 8
  store %struct.writeback_control* %3, %struct.writeback_control** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %20

20:                                               ; preds = %135, %8
  %21 = load i32, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %138

24:                                               ; preds = %20
  %25 = load %struct.cifs_writedata*, %struct.cifs_writedata** %9, align 8
  %26 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %25, i32 0, i32 0
  %27 = load %struct.page**, %struct.page*** %26, align 8
  %28 = load i32, i32* %18, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %29
  %31 = load %struct.page*, %struct.page** %30, align 8
  store %struct.page* %31, %struct.page** %19, align 8
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.page*, %struct.page** %19, align 8
  %36 = call i32 @lock_page(%struct.page* %35)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.page*, %struct.page** %19, align 8
  %39 = call i32 @trylock_page(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %138

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.page*, %struct.page** %19, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 1
  %46 = load %struct.address_space*, %struct.address_space** %45, align 8
  %47 = load %struct.address_space*, %struct.address_space** %11, align 8
  %48 = icmp ne %struct.address_space* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.page*, %struct.page** %19, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  br label %138

55:                                               ; preds = %43
  %56 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %57 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.page*, %struct.page** %19, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32*, i32** %16, align 8
  store i32 1, i32* %67, align 4
  %68 = load %struct.page*, %struct.page** %19, align 8
  %69 = call i32 @unlock_page(%struct.page* %68)
  br label %138

70:                                               ; preds = %60, %55
  %71 = load i64*, i64** %15, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.page*, %struct.page** %19, align 8
  %76 = getelementptr inbounds %struct.page, %struct.page* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %15, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.page*, %struct.page** %19, align 8
  %83 = call i32 @unlock_page(%struct.page* %82)
  br label %138

84:                                               ; preds = %74, %70
  %85 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %86 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @WB_SYNC_NONE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.page*, %struct.page** %19, align 8
  %92 = call i32 @wait_on_page_writeback(%struct.page* %91)
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.page*, %struct.page** %19, align 8
  %95 = call i64 @PageWriteback(%struct.page* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.page*, %struct.page** %19, align 8
  %99 = call i32 @clear_page_dirty_for_io(%struct.page* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.page*, %struct.page** %19, align 8
  %103 = call i32 @unlock_page(%struct.page* %102)
  br label %138

104:                                              ; preds = %97
  %105 = load %struct.page*, %struct.page** %19, align 8
  %106 = call i32 @set_page_writeback(%struct.page* %105)
  %107 = load %struct.page*, %struct.page** %19, align 8
  %108 = call i64 @page_offset(%struct.page* %107)
  %109 = load %struct.address_space*, %struct.address_space** %11, align 8
  %110 = getelementptr inbounds %struct.address_space, %struct.address_space* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @i_size_read(i32 %111)
  %113 = icmp sge i64 %108, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load i32*, i32** %16, align 8
  store i32 1, i32* %115, align 4
  %116 = load %struct.page*, %struct.page** %19, align 8
  %117 = call i32 @unlock_page(%struct.page* %116)
  %118 = load %struct.page*, %struct.page** %19, align 8
  %119 = call i32 @end_page_writeback(%struct.page* %118)
  br label %138

120:                                              ; preds = %104
  %121 = load %struct.page*, %struct.page** %19, align 8
  %122 = load %struct.cifs_writedata*, %struct.cifs_writedata** %9, align 8
  %123 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %122, i32 0, i32 0
  %124 = load %struct.page**, %struct.page*** %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.page*, %struct.page** %124, i64 %126
  store %struct.page* %121, %struct.page** %127, align 8
  %128 = load %struct.page*, %struct.page** %19, align 8
  %129 = getelementptr inbounds %struct.page, %struct.page* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  %132 = load i64*, i64** %15, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32, i32* %17, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %120
  %136 = load i32, i32* %18, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %20

138:                                              ; preds = %114, %101, %81, %66, %52, %41, %20
  %139 = load i32, i32* %17, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.cifs_writedata*, %struct.cifs_writedata** %9, align 8
  %143 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %142, i32 0, i32 0
  %144 = load %struct.page**, %struct.page*** %143, align 8
  %145 = getelementptr inbounds %struct.page*, %struct.page** %144, i64 0
  %146 = load %struct.page*, %struct.page** %145, align 8
  %147 = getelementptr inbounds %struct.page, %struct.page* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  %150 = load i64*, i64** %14, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %141, %138
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %172, %151
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %153
  %158 = load %struct.cifs_writedata*, %struct.cifs_writedata** %9, align 8
  %159 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %158, i32 0, i32 0
  %160 = load %struct.page**, %struct.page*** %159, align 8
  %161 = load i32, i32* %18, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.page*, %struct.page** %160, i64 %162
  %164 = load %struct.page*, %struct.page** %163, align 8
  %165 = call i32 @put_page(%struct.page* %164)
  %166 = load %struct.cifs_writedata*, %struct.cifs_writedata** %9, align 8
  %167 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %166, i32 0, i32 0
  %168 = load %struct.page**, %struct.page*** %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.page*, %struct.page** %168, i64 %170
  store %struct.page* null, %struct.page** %171, align 8
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %18, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %18, align 4
  br label %153

175:                                              ; preds = %153
  %176 = load i32, i32* %17, align 4
  ret i32 %176
}

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
