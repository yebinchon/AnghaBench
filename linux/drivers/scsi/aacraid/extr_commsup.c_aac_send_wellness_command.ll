; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_send_wellness_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_send_wellness_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.aac_srb = type { i32, i32*, i8*, i8*, i64, i8*, i8*, i64, i8*, i8*, i8* }
%struct.sgmap64 = type { %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i8*, i8** }
%struct.fib = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRBF_ExecuteScsi = common dso_local global i32 0, align 4
@SRB_DataOut = common dso_local global i32 0, align 4
@BMIC_OUT = common dso_local global i32 0, align 4
@WRITE_HOST_WELLNESS = common dso_local global i32 0, align 4
@ScsiPortCommand64 = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i8*, i32)* @aac_send_wellness_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_send_wellness_command(%struct.aac_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_srb*, align 8
  %8 = alloca %struct.sgmap64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fib*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %18 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %17)
  store %struct.fib* %18, %struct.fib** %11, align 8
  %19 = load %struct.fib*, %struct.fib** %11, align 8
  %20 = icmp ne %struct.fib* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %156

22:                                               ; preds = %3
  %23 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %24 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @dma_alloc_coherent(i32* %26, i32 %27, i32* %9, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %158

33:                                               ; preds = %22
  %34 = load %struct.fib*, %struct.fib** %11, align 8
  %35 = call i32 @aac_fib_init(%struct.fib* %34)
  %36 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %37 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %43 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le16_to_cpu(i32 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load %struct.fib*, %struct.fib** %11, align 8
  %49 = call i64 @fib_data(%struct.fib* %48)
  %50 = inttoptr i64 %49 to %struct.aac_srb*
  store %struct.aac_srb* %50, %struct.aac_srb** %7, align 8
  %51 = load i32, i32* @SRBF_ExecuteScsi, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %54 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %58 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %62 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %61, i32 0, i32 8
  store i8* %60, i8** %62, align 8
  %63 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %64 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @SRB_DataOut, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %68 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = call i8* @cpu_to_le32(i32 10)
  %70 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %71 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %73 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = call i8* @cpu_to_le32(i32 12)
  %75 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %76 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %80 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %82 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @memset(i32* %83, i32 0, i32 8)
  %85 = load i32, i32* @BMIC_OUT, align 4
  %86 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %87 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @WRITE_HOST_WELLNESS, align 4
  %91 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %92 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  store i32 %90, i32* %94, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @memcpy(i8* %95, i8* %96, i32 %97)
  %99 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %100 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %99, i32 0, i32 0
  %101 = bitcast i32* %100 to %struct.sgmap64*
  store %struct.sgmap64* %101, %struct.sgmap64** %8, align 8
  %102 = call i8* @cpu_to_le32(i32 1)
  %103 = load %struct.sgmap64*, %struct.sgmap64** %8, align 8
  %104 = getelementptr inbounds %struct.sgmap64, %struct.sgmap64* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = ashr i32 %105, 16
  %107 = ashr i32 %106, 16
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.sgmap64*, %struct.sgmap64** %8, align 8
  %110 = getelementptr inbounds %struct.sgmap64, %struct.sgmap64* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  store i8* %108, i8** %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.sgmap64*, %struct.sgmap64** %8, align 8
  %119 = getelementptr inbounds %struct.sgmap64, %struct.sgmap64* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  store i8* %117, i8** %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i8* @cpu_to_le32(i32 %125)
  %127 = load %struct.sgmap64*, %struct.sgmap64** %8, align 8
  %128 = getelementptr inbounds %struct.sgmap64, %struct.sgmap64* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i8* %126, i8** %131, align 8
  %132 = load i32, i32* @ScsiPortCommand64, align 4
  %133 = load %struct.fib*, %struct.fib** %11, align 8
  %134 = load i32, i32* @FsaNormal, align 4
  %135 = call i32 @aac_fib_send(i32 %132, %struct.fib* %133, i32 88, i32 %134, i32 1, i32 1, i32* null, i32* null)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %137 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %6, align 4
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @dma_free_coherent(i32* %139, i32 %140, i8* %141, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %33
  %147 = load %struct.fib*, %struct.fib** %11, align 8
  %148 = call i32 @aac_fib_complete(%struct.fib* %147)
  br label %149

149:                                              ; preds = %146, %33
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @ERESTARTSYS, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %158

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %158, %155, %21
  %157 = load i32, i32* %12, align 4
  ret i32 %157

158:                                              ; preds = %154, %32
  %159 = load %struct.fib*, %struct.fib** %11, align 8
  %160 = call i32 @aac_fib_free(%struct.fib* %159)
  br label %156
}

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
