; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_ur_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i16, %struct.urfile* }
%struct.urfile = type { i32, i32 }
%struct.urdev = type { i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@O_ACCMODE = common dso_local global i16 0, align 2
@O_RDWR = common dso_local global i16 0, align 2
@EACCES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ur_open\0A\00", align 1
@O_RDONLY = common dso_local global i16 0, align 2
@DEV_CLASS_UR_I = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i16 0, align 2
@DEV_CLASS_UR_O = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ur_open: unsupported dev class (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ur_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urdev*, align 8
  %8 = alloca %struct.urfile*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @O_ACCMODE, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %9, align 2
  %19 = load i16, i16* %9, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @O_RDWR, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %171

27:                                               ; preds = %2
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = call %struct.TYPE_2__* @file_inode(%struct.file* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MINOR(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.urdev* @urdev_get_from_devno(i32 %33)
  store %struct.urdev* %34, %struct.urdev** %7, align 8
  %35 = load %struct.urdev*, %struct.urdev** %7, align 8
  %36 = icmp ne %struct.urdev* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %169

40:                                               ; preds = %27
  %41 = load %struct.urdev*, %struct.urdev** %7, align 8
  %42 = getelementptr inbounds %struct.urdev, %struct.urdev* %41, i32 0, i32 2
  %43 = call i32 @spin_lock(i32* %42)
  br label %44

44:                                               ; preds = %77, %40
  %45 = load %struct.urdev*, %struct.urdev** %7, align 8
  %46 = getelementptr inbounds %struct.urdev, %struct.urdev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = load %struct.urdev*, %struct.urdev** %7, align 8
  %51 = getelementptr inbounds %struct.urdev, %struct.urdev* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 8
  %56 = zext i16 %55 to i32
  %57 = load i32, i32* @O_NONBLOCK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %166

63:                                               ; preds = %49
  %64 = load %struct.urdev*, %struct.urdev** %7, align 8
  %65 = getelementptr inbounds %struct.urdev, %struct.urdev* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.urdev*, %struct.urdev** %7, align 8
  %68 = getelementptr inbounds %struct.urdev, %struct.urdev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @wait_event_interruptible(i32 %66, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i32, i32* @ERESTARTSYS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %166

77:                                               ; preds = %63
  %78 = load %struct.urdev*, %struct.urdev** %7, align 8
  %79 = getelementptr inbounds %struct.urdev, %struct.urdev* %78, i32 0, i32 2
  %80 = call i32 @spin_lock(i32* %79)
  br label %44

81:                                               ; preds = %44
  %82 = load %struct.urdev*, %struct.urdev** %7, align 8
  %83 = getelementptr inbounds %struct.urdev, %struct.urdev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.urdev*, %struct.urdev** %7, align 8
  %87 = getelementptr inbounds %struct.urdev, %struct.urdev* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %90 = load i16, i16* %9, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* @O_RDONLY, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %81
  %96 = load %struct.urdev*, %struct.urdev** %7, align 8
  %97 = getelementptr inbounds %struct.urdev, %struct.urdev* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DEV_CLASS_UR_I, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %113, label %101

101:                                              ; preds = %95, %81
  %102 = load i16, i16* %9, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16, i16* @O_WRONLY, align 2
  %105 = zext i16 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.urdev*, %struct.urdev** %7, align 8
  %109 = getelementptr inbounds %struct.urdev, %struct.urdev* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DEV_CLASS_UR_O, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107, %95
  %114 = load %struct.urdev*, %struct.urdev** %7, align 8
  %115 = getelementptr inbounds %struct.urdev, %struct.urdev* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %116)
  %118 = load i32, i32* @EACCES, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %155

120:                                              ; preds = %107, %101
  %121 = load %struct.urdev*, %struct.urdev** %7, align 8
  %122 = call i32 @verify_device(%struct.urdev* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %155

126:                                              ; preds = %120
  %127 = load %struct.urdev*, %struct.urdev** %7, align 8
  %128 = call %struct.urfile* @urfile_alloc(%struct.urdev* %127)
  store %struct.urfile* %128, %struct.urfile** %8, align 8
  %129 = load %struct.urfile*, %struct.urfile** %8, align 8
  %130 = icmp ne %struct.urfile* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %155

134:                                              ; preds = %126
  %135 = load %struct.urdev*, %struct.urdev** %7, align 8
  %136 = getelementptr inbounds %struct.urdev, %struct.urdev* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.urfile*, %struct.urfile** %8, align 8
  %139 = getelementptr inbounds %struct.urfile, %struct.urfile* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.urdev*, %struct.urdev** %7, align 8
  %141 = call i32 @get_file_reclen(%struct.urdev* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %152

145:                                              ; preds = %134
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.urfile*, %struct.urfile** %8, align 8
  %148 = getelementptr inbounds %struct.urfile, %struct.urfile* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.urfile*, %struct.urfile** %8, align 8
  %150 = load %struct.file*, %struct.file** %5, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 1
  store %struct.urfile* %149, %struct.urfile** %151, align 8
  store i32 0, i32* %3, align 4
  br label %171

152:                                              ; preds = %144
  %153 = load %struct.urfile*, %struct.urfile** %8, align 8
  %154 = call i32 @urfile_free(%struct.urfile* %153)
  br label %155

155:                                              ; preds = %152, %131, %125, %113
  %156 = load %struct.urdev*, %struct.urdev** %7, align 8
  %157 = getelementptr inbounds %struct.urdev, %struct.urdev* %156, i32 0, i32 2
  %158 = call i32 @spin_lock(i32* %157)
  %159 = load %struct.urdev*, %struct.urdev** %7, align 8
  %160 = getelementptr inbounds %struct.urdev, %struct.urdev* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, -1
  store i64 %162, i64* %160, align 8
  %163 = load %struct.urdev*, %struct.urdev** %7, align 8
  %164 = getelementptr inbounds %struct.urdev, %struct.urdev* %163, i32 0, i32 2
  %165 = call i32 @spin_unlock(i32* %164)
  br label %166

166:                                              ; preds = %155, %74, %60
  %167 = load %struct.urdev*, %struct.urdev** %7, align 8
  %168 = call i32 @urdev_put(%struct.urdev* %167)
  br label %169

169:                                              ; preds = %166, %37
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %145, %24
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local %struct.urdev* @urdev_get_from_devno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @verify_device(%struct.urdev*) #1

declare dso_local %struct.urfile* @urfile_alloc(%struct.urdev*) #1

declare dso_local i32 @get_file_reclen(%struct.urdev*) #1

declare dso_local i32 @urfile_free(%struct.urfile*) #1

declare dso_local i32 @urdev_put(%struct.urdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
