; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_fill_unix_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_fill_unix_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cifs_unix_set_info_args = type { i32, i32, i32, i32, i32, i32, i32 }

@NO_CHANGE_64 = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@UNIX_FILE = common dso_local global i32 0, align 4
@UNIX_DIR = common dso_local global i32 0, align 4
@UNIX_SYMLINK = common dso_local global i32 0, align 4
@UNIX_CHARDEV = common dso_local global i32 0, align 4
@UNIX_BLOCKDEV = common dso_local global i32 0, align 4
@UNIX_FIFO = common dso_local global i32 0, align 4
@UNIX_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.cifs_unix_set_info_args*)* @cifs_fill_unix_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_fill_unix_set_info(%struct.TYPE_3__* %0, %struct.cifs_unix_set_info_args* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.cifs_unix_set_info_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.cifs_unix_set_info_args* %1, %struct.cifs_unix_set_info_args** %4, align 8
  %8 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @uid_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @from_kuid(i32* @init_user_ns, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %25 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @gid_valid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %31 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @from_kgid(i32* @init_user_ns, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @NO_CHANGE_64, align 4
  %36 = call i8* @cpu_to_le64(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @NO_CHANGE_64, align 4
  %40 = call i8* @cpu_to_le64(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 9
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_le64(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %50 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le64(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %56 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le64(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i8* @cpu_to_le64(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %70 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MAJOR(i32 %71)
  %73 = call i8* @cpu_to_le64(i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cifs_unix_set_info_args*, %struct.cifs_unix_set_info_args** %4, align 8
  %77 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @MINOR(i32 %78)
  %80 = call i8* @cpu_to_le64(i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i8* @cpu_to_le64(i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @S_ISREG(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %34
  %91 = load i32, i32* @UNIX_FILE, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %155

95:                                               ; preds = %34
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @S_ISDIR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* @UNIX_DIR, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %154

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @S_ISLNK(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @UNIX_SYMLINK, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %153

113:                                              ; preds = %104
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @S_ISCHR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* @UNIX_CHARDEV, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %152

122:                                              ; preds = %113
  %123 = load i32, i32* %7, align 4
  %124 = call i64 @S_ISBLK(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* @UNIX_BLOCKDEV, align 4
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %151

131:                                              ; preds = %122
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @S_ISFIFO(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* @UNIX_FIFO, align 4
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %150

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = call i64 @S_ISSOCK(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, i32* @UNIX_SOCKET, align 4
  %146 = call i8* @cpu_to_le32(i32 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %144, %140
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %126
  br label %152

152:                                              ; preds = %151, %117
  br label %153

153:                                              ; preds = %152, %108
  br label %154

154:                                              ; preds = %153, %99
  br label %155

155:                                              ; preds = %154, %90
  ret void
}

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i64 @gid_valid(i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
