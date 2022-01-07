; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_sysname_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_sysname_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i32 }
%struct.afs_sysnames = type { i64, i8**, i8*, i32 }
%struct.afs_net = type { i32, %struct.afs_sysnames* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@AFS_NR_SYSNAME = common dso_local global i64 0, align 8
@afs_init_sysname = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @afs_proc_sysname_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_proc_sysname_write(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.afs_sysnames*, align 8
  %9 = alloca %struct.afs_sysnames*, align 8
  %10 = alloca %struct.seq_file*, align 8
  %11 = alloca %struct.afs_net*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.seq_file*, %struct.seq_file** %18, align 8
  store %struct.seq_file* %19, %struct.seq_file** %10, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %10, align 8
  %21 = call %struct.afs_net* @afs_seq2net(%struct.seq_file* %20)
  store %struct.afs_net* %21, %struct.afs_net** %11, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.afs_sysnames* @kzalloc(i32 32, i32 %22)
  store %struct.afs_sysnames* %23, %struct.afs_sysnames** %8, align 8
  %24 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %25 = icmp ne %struct.afs_sysnames* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %196

29:                                               ; preds = %3
  %30 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %31 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %30, i32 0, i32 3
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  %33 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  store %struct.afs_sysnames* %33, %struct.afs_sysnames** %9, align 8
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %13, align 8
  br label %35

35:                                               ; preds = %145, %43, %29
  %36 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %158

38:                                               ; preds = %35
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %35

44:                                               ; preds = %38
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @AFSNAMEMAX, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %195

51:                                               ; preds = %44
  %52 = load i32, i32* %16, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 64
  br i1 %62, label %63, label %91

63:                                               ; preds = %54
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 115
  br i1 %71, label %72, label %91

72:                                               ; preds = %63
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 121
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 115
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %192

91:                                               ; preds = %81, %72, %63, %54, %51
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 46
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 46
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %97
  br label %192

110:                                              ; preds = %103, %100, %91
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i64 @memchr(i8* %111, i8 signext 47, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %192

116:                                              ; preds = %110
  %117 = load i32, i32* @EFBIG, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %15, align 4
  %119 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %120 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @AFS_NR_SYSNAME, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %188

125:                                              ; preds = %116
  %126 = load i8*, i8** %12, align 8
  %127 = load i64, i64* @afs_init_sysname, align 8
  %128 = call i64 @strcmp(i8* %126, i64 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i64, i64* @afs_init_sysname, align 8
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %14, align 8
  br label %145

133:                                              ; preds = %125
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %15, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i8* @kmemdup(i8* %136, i32 %138, i32 %139)
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %133
  br label %188

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %130
  %146 = load i8*, i8** %14, align 8
  %147 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %148 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %147, i32 0, i32 1
  %149 = load i8**, i8*** %148, align 8
  %150 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %151 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i8*, i8** %149, i64 %152
  store i8* %146, i8** %153, align 8
  %154 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %155 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %35

158:                                              ; preds = %35
  %159 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %160 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %158
  %164 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %165 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %168 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %167, i32 0, i32 1
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  store i8* %166, i8** %170, align 8
  %171 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %172 = getelementptr inbounds %struct.afs_sysnames, %struct.afs_sysnames* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %163, %158
  %176 = load %struct.afs_net*, %struct.afs_net** %11, align 8
  %177 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %176, i32 0, i32 0
  %178 = call i32 @write_lock(i32* %177)
  %179 = load %struct.afs_net*, %struct.afs_net** %11, align 8
  %180 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %179, i32 0, i32 1
  %181 = load %struct.afs_sysnames*, %struct.afs_sysnames** %180, align 8
  store %struct.afs_sysnames* %181, %struct.afs_sysnames** %9, align 8
  %182 = load %struct.afs_sysnames*, %struct.afs_sysnames** %8, align 8
  %183 = load %struct.afs_net*, %struct.afs_net** %11, align 8
  %184 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %183, i32 0, i32 1
  store %struct.afs_sysnames* %182, %struct.afs_sysnames** %184, align 8
  %185 = load %struct.afs_net*, %struct.afs_net** %11, align 8
  %186 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %185, i32 0, i32 0
  %187 = call i32 @write_unlock(i32* %186)
  store i32 0, i32* %15, align 4
  br label %188

188:                                              ; preds = %195, %175, %143, %124
  %189 = load %struct.afs_sysnames*, %struct.afs_sysnames** %9, align 8
  %190 = call i32 @afs_put_sysnames(%struct.afs_sysnames* %189)
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %4, align 4
  br label %196

192:                                              ; preds = %115, %109, %90
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %15, align 4
  br label %195

195:                                              ; preds = %192, %50
  br label %188

196:                                              ; preds = %188, %26
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.afs_net* @afs_seq2net(%struct.seq_file*) #1

declare dso_local %struct.afs_sysnames* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @afs_put_sysnames(%struct.afs_sysnames*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
