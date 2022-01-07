; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_lun_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_lun_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32, i32, i32, i32, i32, i32, %struct.file*, i64 }
%struct.file = type { i32 }
%struct.inode = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to open backing file: %s\0A\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid file type: %s\0A\00", align 1
@FMODE_CAN_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"file not readable: %s\0A\00", align 1
@FMODE_CAN_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to find file size: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"file too big: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"using only first %d blocks\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"file too small: %s\0A\00", align 1
@ETOOSMALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"open backing file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_lun_open(%struct.fsg_lun* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fsg_lun* %0, %struct.fsg_lun** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.file* null, %struct.file** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %17 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %18 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = load i32, i32* @O_LARGEFILE, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.file* @filp_open(i8* %23, i32 %26, i32 0)
  store %struct.file* %27, %struct.file** %7, align 8
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.file* %28)
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.file* %34)
  %36 = load i32, i32* @EACCES, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %22
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = load i32, i32* @O_LARGEFILE, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.file* @filp_open(i8* %45, i32 %48, i32 0)
  store %struct.file* %49, %struct.file** %7, align 8
  br label %50

50:                                               ; preds = %44, %41
  %51 = load %struct.file*, %struct.file** %7, align 8
  %52 = call i64 @IS_ERR(%struct.file* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = call i32 @PTR_ERR(%struct.file* %58)
  store i32 %59, i32* %3, align 4
  br label %201

60:                                               ; preds = %50
  %61 = load %struct.file*, %struct.file** %7, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FMODE_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.file*, %struct.file** %7, align 8
  %70 = call %struct.inode* @file_inode(%struct.file* %69)
  store %struct.inode* %70, %struct.inode** %9, align 8
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @S_ISREG(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %68
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @S_ISBLK(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %197

86:                                               ; preds = %76, %68
  %87 = load %struct.file*, %struct.file** %7, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @FMODE_CAN_READ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %197

97:                                               ; preds = %86
  %98 = load %struct.file*, %struct.file** %7, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FMODE_CAN_WRITE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  store i32 1, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %97
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @i_size_read(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ult i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %8, align 4
  br label %197

119:                                              ; preds = %105
  %120 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %121 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 2048, i32* %14, align 4
  store i32 11, i32* %13, align 4
  br label %139

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %9, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @bdev_logical_block_size(i64 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @blksize_bits(i32 %135)
  store i32 %136, i32* %13, align 4
  br label %138

137:                                              ; preds = %125
  store i32 512, i32* %14, align 4
  store i32 9, i32* %13, align 4
  br label %138

138:                                              ; preds = %137, %130
  br label %139

139:                                              ; preds = %138, %124
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %13, align 4
  %142 = lshr i32 %140, %141
  store i32 %142, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %143 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %144 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  store i32 300, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp uge i32 %148, 1152000
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  store i32 1151999, i32* %11, align 4
  %151 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %152)
  %154 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %150, %147
  br label %158

158:                                              ; preds = %157, %139
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 (%struct.fsg_lun*, i8*, ...) @LINFO(%struct.fsg_lun* %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %164)
  %166 = load i32, i32* @ETOOSMALL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %8, align 4
  br label %197

168:                                              ; preds = %158
  %169 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %170 = call i64 @fsg_lun_is_open(%struct.fsg_lun* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %174 = call i32 @fsg_lun_close(%struct.fsg_lun* %173)
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %178 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %181 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %184 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.file*, %struct.file** %7, align 8
  %186 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %187 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %186, i32 0, i32 6
  store %struct.file* %185, %struct.file** %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %190 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %193 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %195 = load i8*, i8** %5, align 8
  %196 = call i32 @LDBG(%struct.fsg_lun* %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %195)
  store i32 0, i32* %3, align 4
  br label %201

197:                                              ; preds = %162, %114, %93, %82
  %198 = load %struct.file*, %struct.file** %7, align 8
  %199 = call i32 @fput(%struct.file* %198)
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %197, %175, %54
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @LINFO(%struct.fsg_lun*, i8*, ...) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @bdev_logical_block_size(i64) #1

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i64 @fsg_lun_is_open(%struct.fsg_lun*) #1

declare dso_local i32 @fsg_lun_close(%struct.fsg_lun*) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*, i8*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
