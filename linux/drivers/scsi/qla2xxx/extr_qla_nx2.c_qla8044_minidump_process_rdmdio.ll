; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_minidump_process_rdmdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_minidump_process_rdmdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.qla8044_minidump_entry_hdr = type { i32 }
%struct.qla8044_minidump_entry_rdmdio = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla8044_minidump_entry_hdr*, i32**)* @qla8044_minidump_process_rdmdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla8044_minidump_process_rdmdio(%struct.scsi_qla_host* %0, %struct.qla8044_minidump_entry_hdr* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.qla8044_minidump_entry_hdr*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.qla8044_minidump_entry_rdmdio*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.qla8044_minidump_entry_hdr* %1, %struct.qla8044_minidump_entry_hdr** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  %29 = load %struct.qla8044_minidump_entry_hdr*, %struct.qla8044_minidump_entry_hdr** %6, align 8
  %30 = bitcast %struct.qla8044_minidump_entry_hdr* %29 to %struct.qla8044_minidump_entry_rdmdio*
  store %struct.qla8044_minidump_entry_rdmdio* %30, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %31 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %32 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %35 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %38 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %41 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %44 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %16, align 4
  %46 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %47 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %22, align 8
  %49 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %50 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %24, align 4
  %52 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %53 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  store i64 0, i64* %23, align 8
  br label %58

58:                                               ; preds = %160, %3
  %59 = load i64, i64* %23, align 8
  %60 = load i64, i64* %22, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %163

62:                                               ; preds = %58
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @qla8044_poll_wait_ipmdio_bus_idle(%struct.scsi_qla_host* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %164

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %18, align 4
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @qla8044_ipmdio_wr_reg(%struct.scsi_qla_host* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %164

86:                                               ; preds = %72
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 2, %88
  %90 = sub nsw i32 %87, %89
  store i32 %90, i32* %19, align 4
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @qla8044_ipmdio_wr_reg(%struct.scsi_qla_host* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %164

101:                                              ; preds = %86
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 3, %103
  %105 = sub nsw i32 %102, %104
  store i32 %105, i32* %20, align 4
  %106 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @qla8044_ipmdio_wr_reg(%struct.scsi_qla_host* %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 2)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %164

115:                                              ; preds = %101
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %24, align 4
  %121 = call i32 @qla8044_poll_wait_ipmdio_bus_idle(%struct.scsi_qla_host* %116, i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %164

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %15, align 4
  %128 = mul nsw i32 4, %127
  %129 = sub nsw i32 %126, %128
  store i32 %129, i32* %21, align 4
  %130 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @qla8044_ipmdio_rd_reg(%struct.scsi_qla_host* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %164

139:                                              ; preds = %125
  %140 = load i32, i32* %12, align 4
  %141 = shl i32 %140, 18
  %142 = load i32, i32* %11, align 4
  %143 = shl i32 %142, 2
  %144 = or i32 %141, %143
  %145 = or i32 %144, 2
  store i32 %145, i32* %14, align 4
  %146 = load %struct.qla8044_minidump_entry_rdmdio*, %struct.qla8044_minidump_entry_rdmdio** %26, align 8
  %147 = getelementptr inbounds %struct.qla8044_minidump_entry_rdmdio, %struct.qla8044_minidump_entry_rdmdio* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32*, i32** %25, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %25, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** %25, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %25, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %11, align 4
  %158 = load i32*, i32** %25, align 8
  %159 = load i32**, i32*** %7, align 8
  store i32* %158, i32** %159, align 8
  br label %160

160:                                              ; preds = %139
  %161 = load i64, i64* %23, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %23, align 8
  br label %58

163:                                              ; preds = %58
  store i32 0, i32* %4, align 4
  br label %165

164:                                              ; preds = %138, %124, %114, %100, %85, %71
  store i32 -1, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @qla8044_poll_wait_ipmdio_bus_idle(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @qla8044_ipmdio_wr_reg(%struct.scsi_qla_host*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qla8044_ipmdio_rd_reg(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
