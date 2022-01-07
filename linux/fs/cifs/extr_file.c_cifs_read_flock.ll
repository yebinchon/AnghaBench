; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_read_flock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_read_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i64 }
%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@FL_POSIX = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Posix\0A\00", align 1
@FL_FLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Flock\0A\00", align 1
@FL_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Blocking lock\0A\00", align 1
@FL_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Process suspended by mandatory locking - not implemented yet\0A\00", align 1
@FL_LEASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Lease on file - not implemented yet\0A\00", align 1
@FL_CLOSE = common dso_local global i32 0, align 4
@FL_OFDLCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Unknown lock flags 0x%x\0A\00", align 1
@F_WRLCK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"F_WRLCK\0A\00", align 1
@F_UNLCK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"F_UNLCK\0A\00", align 1
@F_RDLCK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"F_RDLCK\0A\00", align 1
@F_EXLCK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"F_EXLCK\0A\00", align 1
@F_SHLCK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"F_SHLCK\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unknown type of lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*, i32*, i32*, i32*, i32*, %struct.TCP_Server_Info*)* @cifs_read_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_read_flock(%struct.file_lock* %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TCP_Server_Info* %5) #0 {
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TCP_Server_Info* %5, %struct.TCP_Server_Info** %12, align 8
  %13 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FL_POSIX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @FYI, align 4
  %21 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %6
  %23 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FL_FLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @FYI, align 4
  %31 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FL_SLEEP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @FYI, align 4
  %41 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %11, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %45 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FL_ACCESS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @FYI, align 4
  %52 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %51, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %55 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FL_LEASE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @FYI, align 4
  %62 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FL_POSIX, align 4
  %68 = load i32, i32* @FL_FLOCK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @FL_SLEEP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FL_ACCESS, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FL_LEASE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @FL_CLOSE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @FL_OFDLCK, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %66, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = load i32, i32* @FYI, align 4
  %85 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %86 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %63
  %90 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %91 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %97 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @F_WRLCK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %89
  %102 = load i32, i32* @FYI, align 4
  %103 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %105 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 1, i32* %112, align 4
  br label %192

113:                                              ; preds = %89
  %114 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %115 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @F_UNLCK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load i32, i32* @FYI, align 4
  %121 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %123 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32*, i32** %10, align 8
  store i32 1, i32* %130, align 4
  br label %191

131:                                              ; preds = %113
  %132 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %133 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @F_RDLCK, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load i32, i32* @FYI, align 4
  %139 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %140 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %141 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 1, i32* %148, align 4
  br label %190

149:                                              ; preds = %131
  %150 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %151 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @F_EXLCK, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load i32, i32* @FYI, align 4
  %157 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %158 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %159 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = load i32*, i32** %9, align 8
  store i32 1, i32* %166, align 4
  br label %189

167:                                              ; preds = %149
  %168 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %169 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @F_SHLCK, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load i32, i32* @FYI, align 4
  %175 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %176 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %177 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %180
  store i32 %183, i32* %181, align 4
  %184 = load i32*, i32** %9, align 8
  store i32 1, i32* %184, align 4
  br label %188

185:                                              ; preds = %167
  %186 = load i32, i32* @FYI, align 4
  %187 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %173
  br label %189

189:                                              ; preds = %188, %155
  br label %190

190:                                              ; preds = %189, %137
  br label %191

191:                                              ; preds = %190, %119
  br label %192

192:                                              ; preds = %191, %101
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
