; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@O_EXCL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sg_open: flags=0x%x\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@sg_device_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @iminor(%struct.inode* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call i32 @nonseekable_open(%struct.inode* %17, %struct.file* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @O_EXCL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @O_ACCMODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %194

33:                                               ; preds = %24, %2
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.TYPE_15__* @sg_get_dev(i32 %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %9, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = call i64 @IS_ERR(%struct.TYPE_15__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = call i32 @PTR_ERR(%struct.TYPE_15__* %40)
  store i32 %41, i32* %3, align 4
  br label %194

42:                                               ; preds = %33
  %43 = load i32, i32* @KERN_INFO, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @sg_printk(i32 %43, %struct.TYPE_15__* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = call i32 @SCSI_LOG_TIMEOUT(i32 3, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call i32 @scsi_device_get(%struct.TYPE_16__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %162

55:                                               ; preds = %42
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = call i32 @scsi_autopm_get_device(%struct.TYPE_16__* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %189

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = call i64 @scsi_block_when_processing_errors(%struct.TYPE_16__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %184

77:                                               ; preds = %68, %63
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @O_NONBLOCK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @O_EXCL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %180

98:                                               ; preds = %90
  br label %108

99:                                               ; preds = %85
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %180

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %98
  br label %117

109:                                              ; preds = %77
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @open_wait(%struct.TYPE_15__* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %180

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %108
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @O_EXCL, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 7
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load %struct.request_queue*, %struct.request_queue** %136, align 8
  store %struct.request_queue* %137, %struct.request_queue** %8, align 8
  %138 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %139 = call i32 @queue_max_segments(%struct.request_queue* %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %130, %125
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = call %struct.TYPE_15__* @sg_add_sfp(%struct.TYPE_15__* %143)
  store %struct.TYPE_15__* %144, %struct.TYPE_15__** %10, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %146 = call i64 @IS_ERR(%struct.TYPE_15__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %150 = call i32 @PTR_ERR(%struct.TYPE_15__* %149)
  store i32 %150, i32* %11, align 4
  br label %168

151:                                              ; preds = %142
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = load %struct.file*, %struct.file** %5, align 8
  %154 = getelementptr inbounds %struct.file, %struct.file* %153, i32 0, i32 1
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %154, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = call i32 @mutex_unlock(i32* %160)
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %189, %151, %54
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 5
  %165 = load i32, i32* @sg_device_destroy, align 4
  %166 = call i32 @kref_put(i32* %164, i32 %165)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %3, align 4
  br label %194

168:                                              ; preds = %148
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @O_EXCL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = call i32 @wake_up_interruptible(i32* %177)
  br label %179

179:                                              ; preds = %173, %168
  br label %180

180:                                              ; preds = %179, %115, %104, %95
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 3
  %183 = call i32 @mutex_unlock(i32* %182)
  br label %184

184:                                              ; preds = %180, %74
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = call i32 @scsi_autopm_put_device(%struct.TYPE_16__* %187)
  br label %189

189:                                              ; preds = %184, %62
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = call i32 @scsi_device_put(%struct.TYPE_16__* %192)
  br label %162

194:                                              ; preds = %162, %39, %30
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.TYPE_15__* @sg_get_dev(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @sg_printk(i32, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @scsi_device_get(%struct.TYPE_16__*) #1

declare dso_local i32 @scsi_autopm_get_device(%struct.TYPE_16__*) #1

declare dso_local i64 @scsi_block_when_processing_errors(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @open_wait(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @queue_max_segments(%struct.request_queue*) #1

declare dso_local %struct.TYPE_15__* @sg_add_sfp(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @scsi_autopm_put_device(%struct.TYPE_16__*) #1

declare dso_local i32 @scsi_device_put(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
