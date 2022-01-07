; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_wdata_send_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_wdata_send_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_writedata = type { i32, i32, %struct.TYPE_6__*, i64, i32, i32, i64, i32*, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.address_space = type { i32 }
%struct.writeback_control = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.cifs_writedata*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@cifs_writedata_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_writedata*, i32, %struct.address_space*, %struct.writeback_control*)* @wdata_send_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdata_send_pages(%struct.cifs_writedata* %0, i32 %1, %struct.address_space* %2, %struct.writeback_control* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_writedata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.writeback_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.cifs_writedata* %0, %struct.cifs_writedata** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.address_space* %2, %struct.address_space** %8, align 8
  store %struct.writeback_control* %3, %struct.writeback_control** %9, align 8
  %12 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %13 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_8__* @tlink_tcon(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  store %struct.TCP_Server_Info* %21, %struct.TCP_Server_Info** %11, align 8
  %22 = load %struct.writeback_control*, %struct.writeback_control** %9, align 8
  %23 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %26 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %29 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %31 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @page_offset(i32 %34)
  %36 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %37 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %36, i32 0, i32 8
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %40 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.address_space*, %struct.address_space** %8, align 8
  %42 = getelementptr inbounds %struct.address_space, %struct.address_space* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @i_size_read(i32 %43)
  %45 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %46 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @page_offset(i32 %52)
  %54 = sub nsw i64 %44, %53
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i64 @min(i64 %54, i32 %55)
  %57 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %58 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %57, i32 0, i32 6
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %65 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %69 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %71 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %76 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %78 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %79 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %78, i32 0, i32 4
  %80 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %81 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @adjust_credits(%struct.TCP_Server_Info* %77, i32* %79, i64 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %109

88:                                               ; preds = %4
  %89 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %90 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %107

98:                                               ; preds = %88
  %99 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %100 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32 (%struct.cifs_writedata*, i32)*, i32 (%struct.cifs_writedata*, i32)** %102, align 8
  %104 = load %struct.cifs_writedata*, %struct.cifs_writedata** %6, align 8
  %105 = load i32, i32* @cifs_writedata_release, align 4
  %106 = call i32 %103(%struct.cifs_writedata* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %98, %95
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %86
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_8__* @tlink_tcon(i32) #1

declare dso_local i64 @page_offset(i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @adjust_credits(%struct.TCP_Server_Info*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
