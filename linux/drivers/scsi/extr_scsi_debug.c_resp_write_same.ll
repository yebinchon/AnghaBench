; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@sdebug_sector_size = common dso_local global i32 0, align 4
@atomic_rw = common dso_local global i32 0, align 4
@sdebug_store_sectors = common dso_local global i32 0, align 4
@fake_storep = common dso_local global i32* null, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@sdebug_verbose = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: %s: lb size=%u, IO sent=%d bytes\0A\00", align 1
@my_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"write same\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, i32, i32, i32, i32)* @resp_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_write_same(%struct.scsi_cmnd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @sdebug_sector_size, align 4
  store i32 %21, i32* %17, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @check_device_access_params(%struct.scsi_cmnd* %22, i32 %23, i32 %24, i32 1)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %130

30:                                               ; preds = %6
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @write_lock_irqsave(i32* @atomic_rw, i64 %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = call i64 (...) @scsi_debug_lbp()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @unmap_region(i32 %39, i32 %40)
  br label %127

42:                                               ; preds = %35, %30
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @sdebug_store_sectors, align 4
  %46 = call i32 @do_div(i32 %44, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32*, i32** @fake_storep, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %17, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %20, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load i32*, i32** %20, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @memset(i32* %56, i32 0, i32 %57)
  store i32 0, i32* %14, align 4
  br label %64

59:                                               ; preds = %42
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @fetch_to_dev_buffer(%struct.scsi_cmnd* %60, i32* %61, i32 %62)
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 -1, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @write_unlock_irqrestore(i32* @atomic_rw, i64 %68)
  %70 = load i32, i32* @DID_ERROR, align 4
  %71 = shl i32 %70, 16
  store i32 %71, i32* %7, align 4
  br label %130

72:                                               ; preds = %64
  %73 = load i64, i64* @sdebug_verbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* @KERN_INFO, align 4
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @my_name, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @sdev_printk(i32 %83, i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %78, %75, %72
  br label %92

92:                                               ; preds = %91
  store i64 1, i64* %16, align 8
  br label %93

93:                                               ; preds = %116, %92
  %94 = load i64, i64* %16, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %16, align 8
  %102 = add i64 %100, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* @sdebug_store_sectors, align 4
  %106 = call i32 @do_div(i32 %104, i32 %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32*, i32** @fake_storep, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %17, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32*, i32** %20, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @memmove(i32* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %98
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %16, align 8
  br label %93

119:                                              ; preds = %93
  %120 = call i64 (...) @scsi_debug_lbp()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @map_region(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %38
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @write_unlock_irqrestore(i32* @atomic_rw, i64 %128)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %127, %67, %28
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @check_device_access_params(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @scsi_debug_lbp(...) #1

declare dso_local i32 @unmap_region(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fetch_to_dev_buffer(%struct.scsi_cmnd*, i32*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @map_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
