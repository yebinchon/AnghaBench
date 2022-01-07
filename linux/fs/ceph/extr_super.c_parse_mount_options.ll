; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_parse_mount_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_parse_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mount_options = type { i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.ceph_options = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"parse_mount_options %p, dev_name '%s'\0A\00", align 1
@CEPH_MOUNT_OPT_DEFAULT = common dso_local global i32 0, align 4
@CEPH_MAX_WRITE_SIZE = common dso_local global i32 0, align 4
@CEPH_MAX_READ_SIZE = common dso_local global i32 0, align 4
@CEPH_RASIZE_DEFAULT = common dso_local global i32 0, align 4
@CEPH_SNAPDIRNAME_DEFAULT = common dso_local global i8* null, align 8
@CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT = common dso_local global i32 0, align 4
@CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT = common dso_local global i32 0, align 4
@CEPH_MAX_READDIR_DEFAULT = common dso_local global i32 0, align 4
@CEPH_MAX_READDIR_BYTES_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"device name is missing path (no : separator in %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"device name '%.*s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"server path '%s'\0A\00", align 1
@parse_fsopt_token = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mount_options**, %struct.ceph_options**, i32, i8*, i8*)* @parse_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mount_options(%struct.ceph_mount_options** %0, %struct.ceph_options** %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_mount_options**, align 8
  %8 = alloca %struct.ceph_options**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ceph_mount_options*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ceph_mount_options** %0, %struct.ceph_mount_options*** %7, align 8
  store %struct.ceph_options** %1, %struct.ceph_options*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8*, i8** %11, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %166

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ceph_mount_options* @kzalloc(i32 64, i32 %25)
  store %struct.ceph_mount_options* %26, %struct.ceph_mount_options** %12, align 8
  %27 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %28 = icmp ne %struct.ceph_mount_options* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %166

32:                                               ; preds = %24
  %33 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.ceph_mount_options* %33, i8* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %38 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @CEPH_MOUNT_OPT_DEFAULT, align 4
  %40 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %41 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @CEPH_MAX_WRITE_SIZE, align 4
  %43 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %44 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @CEPH_MAX_READ_SIZE, align 4
  %46 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %47 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @CEPH_RASIZE_DEFAULT, align 4
  %49 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %50 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @CEPH_SNAPDIRNAME_DEFAULT, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kstrdup(i8* %51, i32 %52)
  %54 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %55 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %57 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %32
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %162

63:                                               ; preds = %32
  %64 = load i32, i32* @CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT, align 4
  %65 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %66 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT, align 4
  %68 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %69 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @CEPH_MAX_READDIR_DEFAULT, align 4
  %71 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %72 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @CEPH_MAX_READDIR_BYTES_DEFAULT, align 4
  %74 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %75 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = call i32 (...) @default_congestion_kb()
  %77 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %78 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 47)
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %63
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i8*, i8** %13, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @kstrdup(i8* %88, i32 %89)
  %91 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %92 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %94 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %14, align 4
  br label %162

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %83
  br label %108

102:                                              ; preds = %63
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8* %107, i8** %13, align 8
  br label %108

108:                                              ; preds = %102, %101
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %112, i8** %13, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = icmp ult i8* %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 58
  br i1 %120, label %121, label %124

121:                                              ; preds = %116, %108
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  br label %162

124:                                              ; preds = %116
  %125 = load i8*, i8** %13, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %130, i8* %131)
  %133 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %134 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %124
  %138 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %139 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %137, %124
  %143 = load i8*, i8** %10, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = load i32, i32* @parse_fsopt_token, align 4
  %147 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %148 = bitcast %struct.ceph_mount_options* %147 to i8*
  %149 = call %struct.ceph_options* @ceph_parse_options(i8* %143, i8* %144, i8* %145, i32 %146, i8* %148)
  %150 = load %struct.ceph_options**, %struct.ceph_options*** %8, align 8
  store %struct.ceph_options* %149, %struct.ceph_options** %150, align 8
  %151 = load %struct.ceph_options**, %struct.ceph_options*** %8, align 8
  %152 = load %struct.ceph_options*, %struct.ceph_options** %151, align 8
  %153 = call i64 @IS_ERR(%struct.ceph_options* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = load %struct.ceph_options**, %struct.ceph_options*** %8, align 8
  %157 = load %struct.ceph_options*, %struct.ceph_options** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.ceph_options* %157)
  store i32 %158, i32* %14, align 4
  br label %162

159:                                              ; preds = %142
  %160 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %161 = load %struct.ceph_mount_options**, %struct.ceph_mount_options*** %7, align 8
  store %struct.ceph_mount_options* %160, %struct.ceph_mount_options** %161, align 8
  store i32 0, i32* %6, align 4
  br label %166

162:                                              ; preds = %155, %121, %97, %60
  %163 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %12, align 8
  %164 = call i32 @destroy_mount_options(%struct.ceph_mount_options* %163)
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %159, %29, %21
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.ceph_mount_options* @kzalloc(i32, i32) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @default_congestion_kb(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.ceph_options* @ceph_parse_options(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ceph_options*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_options*) #1

declare dso_local i32 @destroy_mount_options(%struct.ceph_mount_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
