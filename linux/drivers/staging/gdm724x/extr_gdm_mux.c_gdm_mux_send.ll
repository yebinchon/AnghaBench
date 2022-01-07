; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_dev = type { i64, i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.mux_pkt_header = type { i32, i8*, i8*, i8* }
%struct.mux_tx = type { i32, void (i8*)*, i32, i64, i8* }

@gdm_mux_send.seq_num = internal global i32 1, align 4
@PM_SUSPEND = common dso_local global i64 0, align 8
@MUX_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"alloc_mux_tx fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@START_FLAG = common dso_local global i32 0, align 4
@packet_type = common dso_local global i32* null, align 8
@gdm_mux_send_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usb_submit_urb Error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, void (i8*)*, i8*)* @gdm_mux_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_mux_send(i8* %0, i8* %1, i32 %2, i32 %3, void (i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mux_dev*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca %struct.mux_pkt_header*, align 8
  %17 = alloca %struct.mux_tx*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store void (i8*)* %4, void (i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.mux_dev*
  store %struct.mux_dev* %22, %struct.mux_dev** %14, align 8
  %23 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %24 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %23, i32 0, i32 3
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %15, align 8
  store %struct.mux_tx* null, %struct.mux_tx** %17, align 8
  %26 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %27 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PM_SUSPEND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %6
  %32 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %33 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_autopm_get_interface(i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %40 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_autopm_put_interface(i32 %41)
  br label %43

43:                                               ; preds = %38, %31
  br label %44

44:                                               ; preds = %43, %6
  %45 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %46 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %20, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* @MUX_HEADER_SIZE, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @ALIGN(i32 %51, i32 4)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call %struct.mux_tx* @alloc_mux_tx(i32 %53)
  store %struct.mux_tx* %54, %struct.mux_tx** %17, align 8
  %55 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %56 = icmp ne %struct.mux_tx* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %44
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %60 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %20, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %155

65:                                               ; preds = %44
  %66 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %67 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.mux_pkt_header*
  store %struct.mux_pkt_header* %69, %struct.mux_pkt_header** %16, align 8
  %70 = load i32, i32* @START_FLAG, align 4
  %71 = call i8* @__cpu_to_le32(i32 %70)
  %72 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %16, align 8
  %73 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @gdm_mux_send.seq_num, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @gdm_mux_send.seq_num, align 4
  %76 = call i8* @__cpu_to_le32(i32 %74)
  %77 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %16, align 8
  %78 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i8* @__cpu_to_le32(i32 %79)
  %81 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %16, align 8
  %82 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** @packet_type, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__cpu_to_le16(i32 %87)
  %89 = load %struct.mux_pkt_header*, %struct.mux_pkt_header** %16, align 8
  %90 = getelementptr inbounds %struct.mux_pkt_header, %struct.mux_pkt_header* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %92 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @MUX_HEADER_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @memcpy(i64 %96, i8* %97, i32 %98)
  %100 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %101 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @MUX_HEADER_SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @MUX_HEADER_SIZE, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @memset(i64 %108, i32 0, i32 %113)
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %117 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load void (i8*)*, void (i8*)** %12, align 8
  %119 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %120 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %119, i32 0, i32 1
  store void (i8*)* %118, void (i8*)** %120, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %123 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %125 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %128 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %129 = call i32 @usb_sndbulkpipe(%struct.usb_device* %128, i32 5)
  %130 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %131 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @gdm_mux_send_complete, align 4
  %135 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %136 = call i32 @usb_fill_bulk_urb(i32 %126, %struct.usb_device* %127, i32 %129, i64 %132, i32 %133, i32 %134, %struct.mux_tx* %135)
  %137 = load %struct.mux_tx*, %struct.mux_tx** %17, align 8
  %138 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @GFP_ATOMIC, align 4
  %141 = call i32 @usb_submit_urb(i32 %139, i32 %140)
  store i32 %141, i32* %19, align 4
  %142 = load %struct.mux_dev*, %struct.mux_dev** %14, align 8
  %143 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %142, i32 0, i32 1
  %144 = load i64, i64* %20, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %65
  %149 = load i32, i32* %19, align 4
  %150 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %148, %65
  %152 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %153 = call i32 @usb_mark_last_busy(%struct.usb_device* %152)
  %154 = load i32, i32* %19, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %57
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.mux_tx* @alloc_mux_tx(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i64, i32, i32, %struct.mux_tx*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_mark_last_busy(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
