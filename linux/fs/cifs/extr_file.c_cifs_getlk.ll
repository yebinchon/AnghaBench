; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_getlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_getlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.file_lock = type { i8*, i64, i32, i64 }
%struct.cifsFileInfo = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)* }

@CIFS_RDLCK = common dso_local global i32 0, align 4
@CIFS_WRLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i8* null, align 8
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Error unlocking previously locked range %d during test of lock\0A\00", align 1
@F_WRLCK = common dso_local global i8* null, align 8
@F_RDLCK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.file_lock*, i32, i32, i32, i32)* @cifs_getlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_getlk(%struct.file* %0, %struct.file_lock* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.cifsFileInfo*, align 8
  %17 = alloca %struct.cifs_tcon*, align 8
  %18 = alloca %struct.TCP_Server_Info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.file_lock* %1, %struct.file_lock** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 1, %23
  %25 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %26 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %15, align 8
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.cifsFileInfo*
  store %struct.cifsFileInfo* %32, %struct.cifsFileInfo** %16, align 8
  %33 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %34 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.cifs_tcon* @tlink_tcon(i32 %35)
  store %struct.cifs_tcon* %36, %struct.cifs_tcon** %17, align 8
  %37 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %38 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %40, align 8
  store %struct.TCP_Server_Info* %41, %struct.TCP_Server_Info** %18, align 8
  %42 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %43 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %6
  %49 = load %struct.file*, %struct.file** %8, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %51 = call i32 @cifs_posix_lock_test(%struct.file* %49, %struct.file_lock* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %217

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %59 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @CIFS_RDLCK, align 4
  store i32 %66, i32* %20, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @CIFS_WRLCK, align 4
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %74 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @hash_lockowner(i32 %75)
  %77 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %78 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @CIFSSMBPosixLock(i32 %70, %struct.cifs_tcon* %71, i32 %72, i32 %76, i64 %79, i64 %80, %struct.file_lock* %81, i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %217

86:                                               ; preds = %6
  %87 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %88 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %89 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %94 = call i32 @cifs_lock_test(%struct.cifsFileInfo* %87, i64 %90, i64 %91, i32 %92, %struct.file_lock* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %7, align 4
  br label %217

99:                                               ; preds = %86
  %100 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %101 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)*, i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %107 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %108 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 %104(i32 %105, %struct.cifsFileInfo* %106, i64 %109, i64 %110, i32 %111, i32 1, i32 0, i32 0)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %99
  %116 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %117 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)*, i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %123 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %124 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 %120(i32 %121, %struct.cifsFileInfo* %122, i64 %125, i64 %126, i32 %127, i32 0, i32 1, i32 0)
  store i32 %128, i32* %14, align 4
  %129 = load i8*, i8** @F_UNLCK, align 8
  %130 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %131 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %115
  %135 = load i32, i32* @VFS, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @cifs_dbg(i32 %135, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %115
  store i32 0, i32* %7, align 4
  br label %217

139:                                              ; preds = %99
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %142 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %140, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i8*, i8** @F_WRLCK, align 8
  %150 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %151 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  store i32 0, i32* %7, align 4
  br label %217

152:                                              ; preds = %139
  %153 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %154 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %162 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)*, i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %168 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %169 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %15, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %174 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %172, %177
  %179 = call i32 %165(i32 %166, %struct.cifsFileInfo* %167, i64 %170, i64 %171, i32 %178, i32 1, i32 0, i32 0)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %152
  %183 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %184 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %183, i32 0, i32 1
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)*, i32 (i32, %struct.cifsFileInfo*, i64, i64, i32, i32, i32, i32)** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %190 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %191 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %15, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %18, align 8
  %196 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %194, %199
  %201 = call i32 %187(i32 %188, %struct.cifsFileInfo* %189, i64 %192, i64 %193, i32 %200, i32 0, i32 1, i32 0)
  store i32 %201, i32* %14, align 4
  %202 = load i8*, i8** @F_RDLCK, align 8
  %203 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %204 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %182
  %208 = load i32, i32* @VFS, align 4
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @cifs_dbg(i32 %208, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %207, %182
  br label %216

212:                                              ; preds = %152
  %213 = load i8*, i8** @F_WRLCK, align 8
  %214 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %215 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  br label %216

216:                                              ; preds = %212, %211
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %216, %148, %138, %97, %69, %54
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @cifs_posix_lock_test(%struct.file*, %struct.file_lock*) #1

declare dso_local i32 @CIFSSMBPosixLock(i32, %struct.cifs_tcon*, i32, i32, i64, i64, %struct.file_lock*, i32, i32) #1

declare dso_local i32 @hash_lockowner(i32) #1

declare dso_local i32 @cifs_lock_test(%struct.cifsFileInfo*, i64, i64, i32, %struct.file_lock*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
