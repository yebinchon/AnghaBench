; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_read_raw_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_read_raw_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.aac_dev* }
%struct.aac_dev = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_raw_io2 = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.aac_raw_io = type { %struct.TYPE_6__, i64, i64, i8*, i8*, i8*, i8** }
%struct.TYPE_6__ = type { i32 }

@AAC_COMM_MESSAGE_TYPE2 = common dso_local global i64 0, align 8
@AAC_COMM_MESSAGE_TYPE3 = common dso_local global i64 0, align 8
@RIO2_IO_TYPE_READ = common dso_local global i64 0, align 8
@ContainerRawIo2 = common dso_local global i32 0, align 4
@RIO_TYPE_READ = common dso_local global i64 0, align 8
@ContainerRawIo = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32)* @aac_read_raw_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_read_raw_io(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aac_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.aac_raw_io2*, align 8
  %15 = alloca %struct.aac_raw_io*, align 8
  store %struct.fib* %0, %struct.fib** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.fib*, %struct.fib** %6, align 8
  %17 = getelementptr inbounds %struct.fib, %struct.fib* %16, i32 0, i32 0
  %18 = load %struct.aac_dev*, %struct.aac_dev** %17, align 8
  store %struct.aac_dev* %18, %struct.aac_dev** %10, align 8
  %19 = load %struct.fib*, %struct.fib** %6, align 8
  %20 = call i32 @aac_fib_init(%struct.fib* %19)
  %21 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %22 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AAC_COMM_MESSAGE_TYPE2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %28 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AAC_COMM_MESSAGE_TYPE3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %26, %4
  %33 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %34 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %101, label %37

37:                                               ; preds = %32
  %38 = load %struct.fib*, %struct.fib** %6, align 8
  %39 = call i64 @fib_data(%struct.fib* %38)
  %40 = inttoptr i64 %39 to %struct.aac_raw_io2*
  store %struct.aac_raw_io2* %40, %struct.aac_raw_io2** %14, align 8
  %41 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %42 = call i32 @memset(%struct.aac_raw_io2* %41, i32 0, i32 48)
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %46 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, -4294967296
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %54 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %57 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %60 = call i64 @scmd_id(%struct.scsi_cmnd* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %55, %63
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %67 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %69 = call i64 @scmd_id(%struct.scsi_cmnd* %68)
  %70 = call i8* @cpu_to_le16(i64 %69)
  %71 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %72 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* @RIO2_IO_TYPE_READ, align 8
  %74 = call i8* @cpu_to_le16(i64 %73)
  %75 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %76 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %78 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %79 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %80 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @aac_build_sgraw2(%struct.scsi_cmnd* %77, %struct.aac_raw_io2* %78, i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %37
  %88 = load i64, i64* %13, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %190

90:                                               ; preds = %37
  %91 = load i32, i32* @ContainerRawIo2, align 4
  store i32 %91, i32* %12, align 4
  %92 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %14, align 8
  %93 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = add i64 48, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  br label %168

101:                                              ; preds = %32, %26
  %102 = load %struct.fib*, %struct.fib** %6, align 8
  %103 = call i64 @fib_data(%struct.fib* %102)
  %104 = inttoptr i64 %103 to %struct.aac_raw_io*
  store %struct.aac_raw_io* %104, %struct.aac_raw_io** %15, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %108 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %107, i32 0, i32 6
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  store i8* %106, i8** %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = and i64 %112, -4294967296
  %114 = lshr i64 %113, 32
  %115 = trunc i64 %114 to i32
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %118 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %117, i32 0, i32 6
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  store i8* %116, i8** %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %123 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %126 = call i64 @scmd_id(%struct.scsi_cmnd* %125)
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %121, %129
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %133 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %135 = call i64 @scmd_id(%struct.scsi_cmnd* %134)
  %136 = call i8* @cpu_to_le16(i64 %135)
  %137 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %138 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* @RIO_TYPE_READ, align 8
  %140 = call i8* @cpu_to_le16(i64 %139)
  %141 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %142 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %144 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %146 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %148 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %149 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %148, i32 0, i32 0
  %150 = call i64 @aac_build_sgraw(%struct.scsi_cmnd* %147, %struct.TYPE_6__* %149)
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %13, align 8
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %101
  %154 = load i64, i64* %13, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %190

156:                                              ; preds = %101
  %157 = load i32, i32* @ContainerRawIo, align 4
  store i32 %157, i32* %12, align 4
  %158 = load %struct.aac_raw_io*, %struct.aac_raw_io** %15, align 8
  %159 = getelementptr inbounds %struct.aac_raw_io, %struct.aac_raw_io* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 4
  %166 = add i64 56, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %156, %90
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.fib*, %struct.fib** %6, align 8
  %172 = getelementptr inbounds %struct.fib, %struct.fib* %171, i32 0, i32 0
  %173 = load %struct.aac_dev*, %struct.aac_dev** %172, align 8
  %174 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = sub i64 %176, 4
  %178 = icmp ugt i64 %170, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @BUG_ON(i32 %179)
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.fib*, %struct.fib** %6, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @FsaNormal, align 4
  %185 = load i64, i64* @io_callback, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %188 = bitcast %struct.scsi_cmnd* %187 to i8*
  %189 = call i32 @aac_fib_send(i32 %181, %struct.fib* %182, i32 %183, i32 %184, i32 0, i32 1, i32 %186, i8* %188)
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %168, %153, %87
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i32 @memset(%struct.aac_raw_io2*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @aac_build_sgraw2(%struct.scsi_cmnd*, %struct.aac_raw_io2*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @aac_build_sgraw(%struct.scsi_cmnd*, %struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
