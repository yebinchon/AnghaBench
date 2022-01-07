; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_port = type { i64, %struct.TYPE_11__, %struct.nvmet_tcp_port* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.nvmet_tcp_port = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__, i32, %struct.nvmet_port*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.nvmet_tcp_port* }
%struct.TYPE_13__ = type { i32 }
%struct.sockaddr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"address family %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"malformed ip/port passed: %s:%s\0A\00", align 1
@nvmet_tcp_accept_work = common dso_local global i32 0, align 4
@NVMET_TCP_DEF_INLINE_DATA_SIZE = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to create a socket\0A\00", align 1
@nvmet_tcp_listen_data_ready = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set TCP_NODELAY sock opt %d\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to set SO_REUSEADDR sock opt %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to bind port socket %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to listen %d on port sock\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"enabling port %d (%pISpc)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_port*)* @nvmet_tcp_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_add_port(%struct.nvmet_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_port*, align 8
  %4 = alloca %struct.nvmet_tcp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvmet_port* %0, %struct.nvmet_port** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvmet_tcp_port* @kzalloc(i32 40, i32 %8)
  store %struct.nvmet_tcp_port* %9, %struct.nvmet_tcp_port** %4, align 8
  %10 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %11 = icmp ne %struct.nvmet_tcp_port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %186

15:                                               ; preds = %1
  %16 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* @AF_INET, align 4
  store i32 %21, i32* %5, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load i32, i32* @AF_INET6, align 4
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %26 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %182

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %35 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %39 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %43 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %42, i32 0, i32 2
  %44 = call i32 @inet_pton_with_scope(i32* @init_net, i32 %33, i32 %37, i32 %41, %struct.TYPE_13__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %32
  %48 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %49 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %53 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %55)
  br label %182

57:                                               ; preds = %32
  %58 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %59 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %60 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %59, i32 0, i32 4
  store %struct.nvmet_port* %58, %struct.nvmet_port** %60, align 8
  %61 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %62 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %64 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %63, i32 0, i32 5
  %65 = load i32, i32* @nvmet_tcp_accept_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %68 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %67, i32 0, i32 4
  %69 = load %struct.nvmet_port*, %struct.nvmet_port** %68, align 8
  %70 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load i64, i64* @NVMET_TCP_DEF_INLINE_DATA_SIZE, align 8
  %75 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %76 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %75, i32 0, i32 4
  %77 = load %struct.nvmet_port*, %struct.nvmet_port** %76, align 8
  %78 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %57
  %80 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %81 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SOCK_STREAM, align 4
  %85 = load i32, i32* @IPPROTO_TCP, align 4
  %86 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %87 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %86, i32 0, i32 1
  %88 = call i32 @sock_create(i32 %83, i32 %84, i32 %85, %struct.TYPE_12__** %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %182

93:                                               ; preds = %79
  %94 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %95 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %96 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store %struct.nvmet_tcp_port* %94, %struct.nvmet_tcp_port** %100, align 8
  %101 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %102 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %109 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @nvmet_tcp_listen_data_ready, align 4
  %111 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %112 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i32 %110, i32* %116, align 8
  store i32 1, i32* %6, align 4
  %117 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %118 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load i32, i32* @IPPROTO_TCP, align 4
  %121 = load i32, i32* @TCP_NODELAY, align 4
  %122 = bitcast i32* %6 to i8*
  %123 = call i32 @kernel_setsockopt(%struct.TYPE_12__* %119, i32 %120, i32 %121, i8* %122, i32 4)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %93
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %177

129:                                              ; preds = %93
  %130 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %131 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* @SOL_SOCKET, align 4
  %134 = load i32, i32* @SO_REUSEADDR, align 4
  %135 = bitcast i32* %6 to i8*
  %136 = call i32 @kernel_setsockopt(%struct.TYPE_12__* %132, i32 %133, i32 %134, i8* %135, i32 4)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %177

142:                                              ; preds = %129
  %143 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %144 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %147 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %146, i32 0, i32 2
  %148 = bitcast %struct.TYPE_13__* %147 to %struct.sockaddr*
  %149 = call i32 @kernel_bind(%struct.TYPE_12__* %145, %struct.sockaddr* %148, i32 4)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* %7, align 4
  %154 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %177

155:                                              ; preds = %142
  %156 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %157 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = call i32 @kernel_listen(%struct.TYPE_12__* %158, i32 128)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %177

165:                                              ; preds = %155
  %166 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %167 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %168 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %167, i32 0, i32 2
  store %struct.nvmet_tcp_port* %166, %struct.nvmet_tcp_port** %168, align 8
  %169 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %170 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %175 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %174, i32 0, i32 2
  %176 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %173, %struct.TYPE_13__* %175)
  store i32 0, i32* %2, align 4
  br label %186

177:                                              ; preds = %162, %152, %139, %126
  %178 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %179 = getelementptr inbounds %struct.nvmet_tcp_port, %struct.nvmet_tcp_port* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = call i32 @sock_release(%struct.TYPE_12__* %180)
  br label %182

182:                                              ; preds = %177, %91, %47, %24
  %183 = load %struct.nvmet_tcp_port*, %struct.nvmet_tcp_port** %4, align 8
  %184 = call i32 @kfree(%struct.nvmet_tcp_port* %183)
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %165, %12
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.nvmet_tcp_port* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @inet_pton_with_scope(i32*, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sock_create(i32, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @kernel_setsockopt(%struct.TYPE_12__*, i32, i32, i8*, i32) #1

declare dso_local i32 @kernel_bind(%struct.TYPE_12__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_listen(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @sock_release(%struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.nvmet_tcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
